
window.onload=start;
function	start(){
	var	canvas=document.getElementById('canvas');
	var	text=document.getElementById('text');
	canvas.setAttribute('width','600px');
	canvas.setAttribute('height','600px');
	var	ctx=canvas.getContext('2d');
	ctx.fillRect(0,0,600,600);
	canvas.onclick=draw;
	function	draw(){
		var arr=[];
		for(var	i=0;i<60;i++){
			arr.push(0);}
		ctx.fillStyle='rgba(0,0,0,1)';
		ctx.fillRect(0,0,600,600);
		var	content=text.value;
		//console.log(content);
		var n=0;
		for(var	i=0;i<content.length;i++){
			var at=content.charCodeAt(i);
			if(at==10){
				if(n==0){
					continue;}
				arr[n]+=1;
				n=0;}
			else if(at==32){}
			else{
				n+=1;}}
		//console.log(arr);
		if(n){
			arr[n]+=1;}
		//console.log(arr);
		var max=0;
		for(i in arr){
			//console.log(content.charCodeAt(i));
			if(arr[i]>max){
				max=arr[i];}}
		for(var i in arr){	
			ctx.fillStyle='rgba(200,233,100,1)';
			var len=arr[i]/max*500||0;
			ctx.fillRect(10,10*i,len,9);
			ctx.font='15px Ubuntu';
			ctx.fillStyle='rgba(170,170,255,1)';
			//ctx.moveTo(10+len,10*i+9);
			ctx.fillText(i+'\n',10+len,10*i+9);}}}
