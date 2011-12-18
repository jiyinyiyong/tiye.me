
window.onload=start;
function start(){
	var n=prompt();
	var canvas=document.getElementById('canvas');
	var ctx=canvas.getContext('2d');
	canvas.setAttribute('width',n);
	canvas.setAttribute('height',n);
	var arr=[];
	for(var i=0;i<n;i++){
		arr[i]=[];
		for(var j=0;j<n;j++){
			arr[i][j]=0;}}
	var edge=Math.ceil(n*Math.sqrt(2)/2+n/2)+4;
	for(var x=1;x<n;x++){
		for(var y=0;y<n;y++){
			if(x==1&&y==0){continue;}
			if(arr[x][y]==1){continue;}
			for(var rho_step=1;;rho_step++){
				var rho_x=rho_step*x;
				var rho_y=rho_step*y;
				if(rho_step>1){
					if(rho_x<n&&rho_y<n){
						arr[rho_x][rho_y]=1;}}
				if(rho_x>edge){break;}
				if(rho_y>edge){break;}
				var left_x=rho_x;
				var left_y=rho_y;
				//console.log(left_x,left_y);
				while(1){
					left_x-=y;
					left_y+=x;
					if(left_x<0){break;}
					if(left_y>=n){break;}
					if(left_x<n&&left_y>=0){
						arr[left_x][left_y]=1;}}
				var right_x=rho_x;
				var right_y=rho_y;
				while(1){
					right_x+=y;
					right_y-=x;
					if(right_x>=n){break;}
					if(right_y<0){break;}
					if(right_x>=0&&right_y<n){
						arr[right_x][right_y]=1;}}}}}
	//console.log(arr);
	for(var x=0;x<n;x++){
		for(var y=0;y<n;y++){
			if(arr[y][x]==0){
				ctx.fillRect(x,y,1,1);}}}}
