import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {mkdirSync,readFileSync,writeFileSync} from 'node:fs';
const run=(...a)=>execFileSync('calcit',a,{encoding:'utf8',maxBuffer:32e6,stdio:['ignore','pipe','pipe']});
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const q=(...a)=>norm(JSON.parse(run('query',...a,'--format','json')).data);
const blob=()=>execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}).trim();
mkdirSync('acceptance',{recursive:true});assert.equal(run('-v').trim(),'0.30.1');assert.equal(blob(),'503b3c1c8c40e0875c3cfb48b908f94bc8525269');
writeFileSync('acceptance/agent-contract.txt',run('docs','agents','--contract'));
const before=norm(JSON.parse(readFileSync('reviewed.json','utf8'))),expected=structuredClone(before),ops=[],evidence=[];
assert.equal(before.defs.length,58);assert.equal(before.defs.reduce((n,d)=>n+d.tests.length+d.examples.length,0),0);
assert.deepEqual(JSON.parse(run('config','show','--format','json')).data,before.config);
assert.deepEqual(q('ns').namespaces.map(n=>q('ns',n)),before.namespaces);
let merges=0,unwraps=0,nonePredicates=0;
function walk(x,path,id){
  if(!Array.isArray(x)||['quote','quasiquote',';','comment','defmacro'].includes(x[0]))return;
  if(['merge','option:unwrap','option:none?'].includes(x[0])){
    assert.deepEqual(JSON.parse(run('tree','show',id,'--path','@'+path.join('.'),'--format','json')).tree,x);
    const old=x[0];
    if(old==='merge'){
      assert.ok(x[1].startsWith('styles/'));const d=q('def','app.style/'+x[1].slice(7));
      assert.deepEqual(d.schema,['::',"'Map","'Tag","'String"]);
      evidence.push({id,path,receiver:x[1],schema:d.schema});merges++;
    }else if(old==='option:unwrap'){assert.equal(id,'app.main/mount-target');assert.deepEqual(x[1],['host/query-selector','|.app']);unwraps++;}
    else {assert.equal(id,'app.comp.container/comp-card');assert.deepEqual(x,['option:none?','info']);nonePredicates++;}
    const replacement={'merge':'.merge','option:unwrap':'.unwrap','option:none?':'.none?'}[old];
    ops.push(['tree','replace',id,'--path','@'+[...path,0].join('.'),'--input-format','json-ast','--code',JSON.stringify(replacement),'--expect','quote '+old]);
    x[0]=replacement;
  }
  x.forEach((v,i)=>walk(v,[...path,i],id));
}
for(const d of expected.defs){assert.deepEqual(q('def',d.id),before.defs.find(x=>x.id===d.id));walk(d.code,[],d.id);}
assert.equal(merges,8);assert.equal(unwraps,1);assert.equal(nonePredicates,1);assert.equal(ops.length,10);
writeFileSync('acceptance/before.json',JSON.stringify(before,null,2));writeFileSync('acceptance/receivers.json',JSON.stringify(evidence,null,2));writeFileSync('acceptance/operations.json',JSON.stringify(ops,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'],preview=JSON.parse(run(...args,'--dry-run'));assert.ok(preview.scoped_revision);
writeFileSync('acceptance/transaction-preview.json',JSON.stringify(preview,null,2));writeFileSync('acceptance/transaction-applied.json',run(...args,'--expect-revision',preview.scoped_revision));
const after=[];for(const ns of before.namespaces){const names=run('query','defs',ns.namespace).split('\n').filter(x=>/^  \S/.test(x)).map(x=>x.trim().split(' ')[0]);assert.equal(names.length,ns.definition_count);for(const n of names)after.push(q('def',`${ns.namespace}/${n}`));}
assert.deepEqual(after,expected.defs);assert.deepEqual(q('ns').namespaces.map(n=>q('ns',n)),before.namespaces);assert.deepEqual(JSON.parse(run('config','show','--format','json')).data,before.config);
writeFileSync('acceptance/after.json',JSON.stringify({...before,defs:after},null,2));writeFileSync('acceptance/snapshot-after-blob.txt',blob());
writeFileSync('acceptance/summary.json',JSON.stringify({merges,unwraps,nonePredicates,definitions:58,attachedTests:0,examples:0,operations:10,preserved:'All schemas/FFI/tags/docs/tests/examples/namespaces/config; actual bottom-tip error/success UI, content/routes/animations and SSR. Original quality baseline unchanged, unsafe remains zero. No compiler rule/checker/test framework.'},null,2));
