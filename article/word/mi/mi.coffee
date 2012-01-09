draw = (ctx, center, range) ->
window.onload = ->
	cvs = document.getElementById "cvs"
	ctx = cvs.getContext "2d"
	cvs.width = 800
	cvs.height = 800
	base =
		x: 30
		y: 30
	space = 30
	s = 5
	ctx.beginPath()
	for y in [1..20]
		for x in [1..20]
			for rX in [-s, s]
				for rY in [-s, s]
					cX = base.x + x*space + rX
					cY = base.y + y*space + rY
					for rangeX in [-s, 0, s]
						for rangeY in [-s, 0, s]
							if (Math.floor (Math.random()*2)) is 0
								ctx.moveTo cX, cY
								ctx.lineTo cX+rangeX, cY+rangeY
	ctx.stroke()
