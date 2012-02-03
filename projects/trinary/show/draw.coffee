
# 绘制完成的图片见这里
# canvas 长宽为 2187^2
cvs = document.getElementById 'cvs'
ctx = cvs.getContext '2d'
ctx.textBaseline = 'middle'
ctx.globalAlpha = 0.1
ctx.font = "bold 800px Ubuntu"
ctx.fillStyle = "rgb(255,255,255)"
ctx.fillRect 0, 0, 2187, 2187
ctx.fillStyle = "rgb(0,0,0)"

cell = (ctx, x, y, w) ->
	u = w / 3
	s = w / 6
	k = s * 6 / 7
	ctx.font = "bold #{u*1.3}px Ubuntu"
	ctx.fillText '6', x + s + 0*u - k, y + s + 0*u
	ctx.fillText '7', x + s + 0*u - k, y + s + 1*u
	ctx.fillText '2', x + s + 0*u - k, y + s + 2*u
	ctx.fillText '1', x + s + 1*u - k, y + s + 0*u
	ctx.fillText '5', x + s + 1*u - k, y + s + 1*u
	ctx.fillText '9', x + s + 1*u - k, y + s + 2*u
	ctx.fillText '8', x + s + 2*u - k, y + s + 0*u
	ctx.fillText '3', x + s + 2*u - k, y + s + 1*u
	ctx.fillText '4', x + s + 2*u - k, y + s + 2*u

limit = 2187
width = 9
x = 0
y = 0
while width <= limit*3
	width *= 3
	x = 0
	while x+width <= limit
		y = 0
		while y+width <= limit
			cell ctx, x, y, width
			y += width
		x += width
