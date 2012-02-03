
o = console.log
elems =
	canvas:
		attr:
			id: "cvs"
			width: 729
			height: 729
		style:
			"box-shadow": "0px 0px 10px black"
			float: "left"
	nav:
		attr:
			id: "value"
			width: 200
		style:
			float: "left"
		text: "&"
($ "body").append (json2page elems)
offset = ($ "#cvs").offset()
p =
	ox: offset.left
	oy: offset.top
	x: offset.left + 364
	y: offset.top + 364
t = new Trinary 27
ctx = ($ "#cvs")[0].getContext "2d"
ctx.textBaseline = "middle"
ctx.font = "13px Ubuntu"
clicked = []
($ "#cvs").mousemove (e) ->
	do ->
		ctx.clearRect 0, 0, 729, 729
		ctx.beginPath()
		ctx.moveTo 0, 364
		ctx.lineTo 728, 364
		ctx.moveTo 364, 0
		ctx.lineTo 364, 728
		ctx.moveTo 242, 0
		ctx.lineTo 242, 728
		ctx.moveTo 0, 242
		ctx.lineTo 728, 242
		ctx.moveTo 485, 0
		ctx.lineTo 485, 728
		ctx.moveTo 0, 485
		ctx.lineTo 728, 485
		ctx.stroke()
		for i in clicked
			ctx.fillText "#{i[0]}", i[1], i[2]-10
			ctx.fillRect i[1]-1, i[2]-1, 3, 3
		ox = e.clientX - p.ox
		oy = e.clientY - p.oy
		y = e.clientX - p.x
		x = -(e.clientY - p.y)
		z = t.xoy2luo x, y
		($ "#value").text "#{x}, #{y}, #{z}"
		ctx.fillText "#{z}", ox, oy-10
($ "#cvs").click (e) ->
	do ->
		unless full then fullscreen()
		ox = e.clientX - p.ox
		oy = e.clientY - p.oy
		y = e.clientX - p.x
		x = -(e.clientY - p.y)
		z = t.xoy2luo x, y
		($ "#value").text "#{x}, #{y}, #{z}"
		ctx.fillText "#{z}", ox, oy-10
		clicked.push [z, ox, oy]
body = ($ "body")[0]
full = false
fullscreen = ->
	if body.mozRequestFullScreen
		body.mozRequestFullScreen()
	else if body.requestFullScreen then body.requestFullScreen()
setTimeout fullscreen, 1000
