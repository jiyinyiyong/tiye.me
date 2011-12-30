
window.onload=main;
function main(){
	var canvas=document.getElementById('canvas');
	var ctx=canvas.getContext('2d');
	canvas.setAttribute('width','2400');
	canvas.setAttribute('height','9600');
	canvas.style.border='solid 1px hsl(0,0%,0%)';
	var from_left=30;
	var from_top=50;
	var n=0;
	for(var i=0;i<64;i++){
		for(var j=0;j<16;j++){
			draw(ctx,from_left,from_top,n);
			n++;
			from_left+=140;}
		from_left-=140*16;
		from_top+=160;}
	return 'finished';}
function draw(ctx,startx,starty,n){
	var arr=[0,0,0,0,0,0,0];
	arr[0]=[startx,starty];
	var nowx=startx;
	var nowy=starty+40;
	arr[1]=[nowx,nowy];
	nowx+=28;
	n%2?nowy+=28:nowy-=28;
	arr[2]=[nowx,nowy];
	n=(n-n%2)/2;
	switch(n%4){
		case 0:nowx+=40;break;
		case 1:nowx-=40;break;
		case 2:nowy+=40;break;
		case 3:nowy-=40;break;
		default:'error..'}
	n=(n-n%4)/4;
	arr[3]=[nowx,nowy];
	n%2?nowx+=28:nowx-=28;
	n=(n-n%2)/2;
	n%2?nowy+=28:nowy-=28;
	n=(n-n%2)/2;
	arr[4]=[nowx,nowy];
	switch(n%4){
		case 0:nowx+=40;break;
		case 1:nowx-=40;break;
		case 2:nowy+=40;break;
		default:nowy-=40;}
	n=(n-n%4)/4;
	arr[5]=[nowx,nowy];
	n%2?nowx+=28:nowx-=28;
	n=(n-n%2)/2;
	n%2?nowy+=28:nowy-=28;
	n=(n-n%2)/2;
	arr[6]=[nowx,nowy];
	console.log(arr);
	ctx.beginPath();
	ctx.arc(startx,starty,2,0,Math.PI*2);
	ctx.fillStyle='hsla(160,70%,80%,0.6)';
	ctx.strokeStyle='hsla(40,80%,60%,0.9)';
	ctx.fill();
	ctx.moveTo(arr[0][0],arr[0][1]);
	ctx.lineTo(arr[1][0],arr[1][1]);
	ctx.lineTo(arr[2][0],arr[2][1]);
	ctx.lineTo(arr[3][0],arr[3][1]);
	ctx.lineTo(arr[4][0],arr[4][1]);
	ctx.lineTo(arr[5][0],arr[5][1]);
	ctx.lineTo(arr[6][0],arr[6][1]);
	ctx.stroke();
	/*
	ctx.beginPath();
	ctx.strokeStyle='hsla(240,80%,30%,0.9)';
	for(var i=0;i<5;i++){
		ctx.moveTo(arr[i][0],arr[i][1]);
		ctx.quadraticCurveTo(arr[i+1][0],arr[i+1][1],arr[i+2][0],arr[i+2][1]);}
	ctx.stroke();
	*/
	//window.location=ctx.canvas.toDataURL('image/gif');
	return 'done draw once';}
