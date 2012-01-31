
window.onload=draw;
function draw(){
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
	var sheng=[
		['b',	'p',	'm',	'f'],
		['d',	't',	'n',	'l'],
		['g',	'k',	'h',	'\''],
		['zh','ch',	'sh',	'r'],
		['z',	'c',	's',	'*']];
	var diao=['1','2','3','4'];
	var canvas=document.getElementById('canvas');
	var ctx=canvas.getContext('2d');
	canvas.setAttribute('width','1340');
	canvas.setAttribute('height','690');
	canvas.style.border='solid 1px hsla(0,50%,50%,1)';
	ctx.font='20px Ubuntu Bold';
	var from_left=240;
	var from_top=410;
	for(var hang in sheng){
		for(var lie in sheng[hang]){
			ctx.fillText(sheng[hang][lie],from_left,from_top);
			from_left+=50;}
		from_left-=200;
		from_top+=30;}
	var from_left=50;
	var from_top=60;
	for(var hang in yun){
		for(var lie in yun[hang]){
			ctx.fillText(yun[hang][lie],from_left,from_top);
			from_left+=50;}
		from_left-=150;
		from_top+=30;}
	ctx.fillText(1,100,600);
	ctx.fillText(2,150,600);
	ctx.fillText(3,200,600);
	ctx.fillText(4,250,600);
	ctx.strokeStyle='hsla(80,90%,60%,0.6)';
	ctx.lineWidth=16;
	ctx.lineCap='round';
	ctx.lineJoin='round';
	ctx.beginPath();
	arrowTo(ctx,54,30,54,520,44,500,64,500);
	arrowTo(ctx,20,54,200,54,190,34,190,70);
	arrowTo(ctx,80,590,280,590,260,575,260,604);
	arrowTo(ctx,244,390,244,540,230,520,260,520);
	arrowTo(ctx,230,400,430,400,420,390,420,410);
	ctx.font='13px Ubuntu Light';
	var one=['y','i','u'];
	var two=['b','d','g','zh','z'];
	var three=['b','p','m','f'];
	var four=[1,2,3,4];
	var five=[];
	for(var i in yun){
		five.push(yun[i][0]);}
	fill4x4(ctx,one,600,60,1);
	fill4x4(ctx,two,609,70,1);
	fill4x4(ctx,three,840,60);
	fill4x4(ctx,four,850,70);
	fill4x4(ctx,five,1080,60);
	ctx.font='24px Ubuntu Bold'
	ctx.fillText('音\t\tyin1\t\ty=\':(f,g)\t\tin(i,en)\t\t1',210,350);
	ctx.stroke();
	ctx.beginPath();
	ctx.strokeStyle='hsla(350,80%,50%,0.4)';
	arrowTo(ctx,395,460,110,448,120,440,120,460);
	arrowTo(ctx,110,448,106,600,96,590,114,590);
	ctx.stroke();
	ctx.beginPath();
	ctx.strokeStyle='hsla(240,90%,80%,0.4)';
	arrowTo(ctx,760,110,1000,60,980,50,990,80);
	arrowTo(ctx,1000,60,1140,210,1140,196,1114,210);
	ctx.stroke();
	ctx.beginPath();
	ctx.fillStyle='hsla(150,90%,70%,0.7)';
	square(ctx,260,50);
	square(ctx,590,40);
	square(ctx,830,40);
	square(ctx,1070,40);
	square(ctx,1060,440);
	square(ctx,760,440);
	square(ctx,460,440);
	ctx.beginPath();
	ctx.lineWidth=5;
	arrowTo(ctx,440,130,440,60,420,80,455,80);
	arrowTo(ctx,440,60,340,235,360,230,340,220);
	arrowTo(ctx,530,510,580,570,570,570,577,550);
	arrowTo(ctx,820,510,880,570,880,550,860,570);
	ctx.stroke();
	ctx.beginPath();
	ctx.moveTo(530,500);
	ctx.arc(530,510,10,0,2*Math.PI,true);
	ctx.fillStyle='hsla(240,80%,40%,0.2)';
	ctx.fill();
	ctx.beginPath();
	ctx.arc(880,570,10,0,2*Math.PI,true);
	ctx.fill();
	ctx.beginPath();
	ctx.arc(1080,570,10,0,2*Math.PI,true);
	ctx.fill();
	ctx.lineWidth=60;
	ctx.strokeStyle='hsla(60,60%,50%,0.1)';
	ctx.beginPath();
	arrowTo(ctx,580,150,510,150,560,50,560,250);
	ctx.stroke();
	ctx.fillStyle='hsla(300,50%,40%,1)';
	ctx.font='16px Ubuntu Bold';
	var say_zero=[
		'拼音拆分时先拆开三部分,然后查表',
		'找到对应行代表字符,罗列蹲坑字符',
		'然后到键盘上检索对应,一般说键盘字符会自动提示',
		'在有提示的情况下入门复杂度可以降低',
		'不过从现有的拼音出发,门槛无法忽视',
		'三个键结束得到正确读音,接着外边选字',
		'我设想可以扫屏输入加快速度,而不止是按键'];
	write(ctx,say_zero,510,280);
	var say_one=[
		'如果转化成带方向的图线轨迹,共有三种情况',
		'折线,直线,点,直线有需要停顿作为标记',
		'图中的圆点相当于点以及停顿对应的动作',
		'相当于笔尖接触-离开屏幕为一个字拼音',
		'上图演示了\'音\'字的拆分和输入',
		'不早打算,如果语音输入来了这码表不是废了:)',
		'我只能期待试一试了'];
	write(ctx,say_one,960,280);
	for(i in ctx){
		console.log(ctx[i]);}
	console.log(canvas.toDataURL('image/png'));
	window.location = ctx.canvas.toDataURL('image/png');
	return 'end';}
function arrowTo(ctx,beginx,beginy,endx,endy,leftx,lefty,rightx,righty){
	ctx.moveTo(beginx,beginy);
	ctx.lineTo(endx,endy);
	ctx.lineTo(leftx,lefty);
	ctx.moveTo(endx,endy);
	ctx.lineTo(rightx,righty);}
function fill4x4(ctx,arr,from_left,from_top,mark){
	var sign=0;
	if(arr[0]==1){
		sign=1;}
	var count=0;
	for(var loop=0;loop<4;loop++){
		for(var loopin=0;loopin<4;loopin++){
			ctx.fillText(arr[count%arr.length],from_left,from_top);
			count+=1;
			if(mark==1&&count==15){
				return 0;}
			console.log(count);
			if(sign==0){
				from_left+=50;}
			else{
				from_top+=50;}}
		if(sign==0){
			from_left-=200;
			from_top+=50;}
		else{
			from_top-=200;
			from_left+=50;}}}
function square(ctx,from_left,from_top){
	for(var i=0;i<4;i++){
		for(var j=0;j<4;j++){
			ctx.fillRect(from_left,from_top,46,46);
			from_left+=50;}
		from_left-=200;
		from_top+=50;}}
function write(ctx,say,from_left,from_top){
	for(var i in say){
		ctx.fillText(say[i],from_left,from_top);
		from_top+=20;}}
