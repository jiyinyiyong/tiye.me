
main = ->
	cvs = document.getElementById 'canvas'
	ctx = cvs.getContext '2d'
	(document.getElementById 'run0').onclick = (e) =>
		main2 ctx, 0, 1
	(document.getElementById 'run4').onclick = (e) =>
		main2 ctx, 4, 1
	(document.getElementById 'ru0').onclick = (e) =>
		main2 ctx, 0, 0
	(document.getElementById 'ru4').onclick = (e) =>
		main2 ctx, 4, 0
main2 = (ctx, sp, bg) ->
	size = 24
	n = 20
	ctx.clearRect 0, 0, 800, 800
	ctx.fillStyle = '#ddd'
	ctx.beginPath()
	if bg == 1
		for i in [1..n]
			for j in [1..n]
				ctx.fillRect i*(size+sp), j*(size+sp), size, size
	ctx.fillStyle = '#ddd'
	for i in [1..n]
		for j in [1..n]
			one ctx, size/2, (size+sp)*i, (size+sp)*j
			one ctx, size/2, (size+sp)*i+size/2, (size+sp)*j
	ctx.closePath()
	ctx.stroke()
window.onload = main
unit = (ctx, x, y, xt, yt) ->
	if (Math.round Math.random()) == 0
		ctx.moveTo x, y
		ctx.lineTo xt, yt
one = (ctx, s, x, y) ->
	dx = s / 2
	dy = s / 2
	for j in [0..3]
		unit ctx, x, y+j*dy, x+dx, y+j*dy+dy
		unit ctx, x+2*dx, y+j*dy, x+dx, y+j*dy+dy
		unit ctx, x+dx, y+j*dy, x, y+j*dy+dy
		unit ctx, x+dx, y+j*dy, x+2*dx, y+j*dy+dy
