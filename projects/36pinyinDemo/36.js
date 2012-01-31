
window.onload=start;
function start(){
	var all_keys=[65,83,68,70,71,72,74,75,90,88,67,86,66,78,77,188,8];
	console.log(all_keys.length);
	var the_string=[];
	var text=document.getElementById('text');
	console.log(text);
	var nav=document.getElementById('nav');
	document.onkeydown=get_key;
	function get_key(event){
		var place=all_keys.indexOf(event.keyCode);
		if(place>=0){
			if(place==16){
				text.value=text.value.slice(0,-1);}
			else{
				send(place);}}}
	function send(place){
		the_string.push(place);
		nav.innerHTML=the_string;
		if(the_string.length==3){
			deal(the_string);
			the_string=[];}}
	function deal(the_string){
		text.value+=look(the_string);}}
function look(arr){
	var t=[0,0,0,0,0];
	console.log('arr',arr);
	var sheng=[
		['b',	'p',	'm',	'f'],
		['d',	't',	'n',	'l'],
		['g',	'k',	'h',	'\''],
		['zh','ch',	'sh',	'r'],
		['z',	'c',	's',	'*']];
	var yun=[
		['y',		'i',		'u'],		//a
		['a',		'ia',		'ua'],	//s
		['o',		'io',		'uo'],	//d
		['e',		'ie',		've'],	//f
		['ang',	'iang',	'uang'],	//g
		['eng',	'ing',	'ueng'],	//h
		['ong',	'iong',	'*'],		//j
		['van',	'v',		'vn'],	//k
		['ai',	'er',		'uai'],	//z
		['ei',	'*',		'ui'],	//x
		['ao',	'iao',	'*'],		//c
		['ou',	'iu',		'*'],		//v
		['an',	'ian',	'uan'],	//b
		['en',	'in',		'un'],	//n
		['*',		'*',		'*'],		//m
		['*',		'*',		'*']];	//,
	var diao=['1','2','3','4'];
	t[4]=arr[1]%4;
	t[0]=Math.floor(arr[1]/4);
	t[3]=arr[2];
	t[1]=arr[0]%3;
	t[2]=Math.floor(arr[0]/3);
	console.log(t);
	var str=sheng[t[2]][t[0]]+yun[t[3]][t[1]]+'\''+diao[t[4]]
	console.log(str);
	return str+',';}
