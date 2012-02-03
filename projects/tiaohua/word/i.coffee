
main = ->
	cvs = document.getElementById 'canvas'
	ctx = cvs.getContext '2d'
	ctx.shadowOffsetX = 0
	ctx.shadowOffsetY = 0
	ctx.shadowBlur = 1
	ctx.fillStyle = '#f00'
	(document.getElementById 'run0').onclick = (e) =>
		main2 ctx, 0, 1
	(document.getElementById 'run4').onclick = (e) =>
		main2 ctx, 8, 1
	main2 ctx, 8, 1
one1 = (ctx, s, x, y) ->
	dx = s / 2
	dy = s / 2
	for j in [0..3]
		unit ctx, x, y+j*dy, x+dx, y+j*dy+dy
		unit ctx, x+2*dx, y+j*dy, x+dx, y+j*dy+dy
		unit ctx, x+dx, y+j*dy, x, y+j*dy+dy
		unit ctx, x+dx, y+j*dy, x+2*dx, y+j*dy+dy
main2 = (ctx, sp, bg) ->
	size = 20
	n = 20
	ctx.clearRect 0, 0, 800, 800
	ctx.shadowColor = '#400'
	ctx.beginPath()
	if bg == 1
		for i in [1..n]
			for j in [1..n]
				ctx.fillRect i*(size+sp)-2, j*(size+sp)-2, size+4, size+4
	# ctx.fillStyle = '#ddd'
	for i in [1..n]
		for j in [1..n]
			one1 ctx, size/2, (size+sp)*i, (size+sp)*j
			one1 ctx, size/2, (size+sp)*i+size/2, (size+sp)*j
	ctx.closePath()
	ctx.strokeStyle = '#fff'
	ctx.stroke()
# window.onload = main
unit = (ctx, x, y, xt, yt) ->
	if (Math.round Math.random()) == 0
		ctx.moveTo x, y
		ctx.lineTo xt, yt
one0 = (ctx, s, x, y) ->
	dx = s / 2
	ddx = s / 4
	dy = s / 2
	ddy = s / 4
	for j in [0..3]
		unit ctx, x+ddx, y+j*dy, x+ddx, y+j*dy+dy
		unit ctx, x, y+j*dy+ddy, x+dx, y+j*dy+ddy
		unit ctx, x+dx+ddx, y+j*dy, x+dx+ddx, y+j*dy+dy
		unit ctx, x+dx, y+j*dy+ddy, x+2*dx, y+j*dy+ddy
do main
