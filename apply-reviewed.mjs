import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync,readdirSync} from 'node:fs';
import {createHash} from 'node:crypto';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
const exec=(bin,args)=>execFileSync(bin,args,{encoding:'utf8',maxBuffer:64e6});
const run=(...args)=>exec('calcit',['calcit.cirru',...args]);
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const p=norm(JSON.parse(readFileSync('reviewed.json')));
assert.equal(exec('calcit',['-v']).trim(),'0.30.1');
const q=(...args)=>{const r=JSON.parse(run('query',...args,'--format','json'));assert.deepEqual(r.diagnostics||[],[]);return norm(r.data);};
const views=()=>({config:q('config'),namespaces:q('ns').namespaces.map(n=>q('ns',n)),defs:p.before.defs.map(d=>q('def',d.id))});
const hash=f=>createHash('sha256').update(readFileSync(f)).digest('hex');
const ordinary=()=>{for(const[f,h]of Object.entries(p.ordinary))assert.equal(hash(f),h,f);};
const blob=()=>exec('git',['hash-object','calcit.cirru']).trim();
function modules(dir='js-out',prefix=''){return Object.fromEntries(readdirSync(dir,{withFileTypes:true}).flatMap(e=>e.isDirectory()?Object.entries(modules(dir+'/'+e.name,prefix+e.name+'/')):[[prefix+e.name,hash(dir+'/'+e.name)]]));}
mkdirSync('acceptance',{recursive:true});ordinary();
if(process.argv[2]==='apply'){
  assert.equal(blob(),p.snapshotBlob);assert.deepEqual(views(),p.before);
  writeFileSync('acceptance/before.json',JSON.stringify(views()));writeFileSync('acceptance/modules-before.json',JSON.stringify(modules()));
  const table=q('type',":: 'List 'Tag"),method=table.methods.find(m=>m.name==='.len');
  assert.equal(method.status,'proven');assert.deepEqual(method.call_types.returns,"'Number");
  writeFileSync('acceptance/target-api.json',JSON.stringify({version:'0.30.1',table}));
  assert.equal(p.sites.length,1);const s=p.sites[0];
  assert.equal(s.id,'app.comp.container/comp-cards');assert.deepEqual(s.before,['count','router']);assert.deepEqual(s.after,['.len','router']);
  const tree=JSON.parse(run('tree','show',s.id,'--path','@'+s.path.join('.'),'--format','json')).tree;assert.deepEqual(tree,s.before);
  const expected=structuredClone(p.before);s.path.reduce((n,i)=>n[i],expected.defs.find(d=>d.id===s.id).code)[0]='.len';assert.deepEqual(expected,p.expected);
  const operations=[['tree','replace',s.id,'--path','@'+[...s.path,0].join('.'),'--input-format','json-ast','--code',JSON.stringify('.len')]];
  writeFileSync('acceptance/subtrees.json',JSON.stringify([{id:s.id,path:s.path,tree}]));writeFileSync('acceptance/operations.json',JSON.stringify(operations));
  run('docs','agents','--contract');const txn=['edit','transaction','--file','acceptance/operations.json','--format','json'];
  const preview=JSON.parse(run(...txn,'--dry-run'));assert.ok(preview.scoped_revision);writeFileSync('acceptance/preview.json',JSON.stringify(preview));
  writeFileSync('acceptance/applied.json',run(...txn,'--expect-revision',preview.scoped_revision));
  assert.deepEqual(views(),p.expected);ordinary();writeFileSync('acceptance/source-after.json',JSON.stringify(views()));writeFileSync('acceptance/snapshot-after-blob.txt',blob());
}else{
  assert.equal(process.argv[2],'verify');assert.equal(blob(),readFileSync('acceptance/snapshot-after-blob.txt','utf8'));assert.deepEqual(views(),p.expected);
  const before=JSON.parse(readFileSync('acceptance/modules-before.json')),after=modules();assert.deepEqual(Object.keys(before).sort(),Object.keys(after).sort());
  const changed=Object.keys(after).filter(k=>after[k]!==before[k]);for(const n of changed)assert.ok(p.allowedSourceModules.includes(n),n);
  writeFileSync('acceptance/source-module-diff.json',JSON.stringify({before,after,changed}));writeFileSync('acceptance/after.json',JSON.stringify(views()));
  writeFileSync('acceptance/snapshot.cirru',readFileSync('calcit.cirru'));
  writeFileSync('acceptance/success.json',JSON.stringify({base:p.base,before:p.snapshotBlob,after:blob(),definitions:58,sites:1,target:'0.30.1',ordinaryFiles:30}));
}
