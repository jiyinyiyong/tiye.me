
class Text
	constructor: (@draw) ->
	baseX: 20
	baseY: 20
	line: 0
	lineHeight: 30
	cha: 0
	chaSize: 20
	chaSpace: 8
	place: 0
	col: 0
	posX: @baseX
	posY: @baseY
	newPosition: ->
		@posX = @baseX + @cha * (@chaSize+@chaSpace) + @chaSize/2*@col
		@posY = @baseY + @line * @lineHeight + @place*@chaSize/4
	forword: (code) ->
		@newPosition()
		@draw.beginPath()
		if code[0] is '1'
			@draw.moveTo @posX, @posY
			@draw.lineTo @posX + @chaSize/4, @posY + @chaSize/4
		if code[1] is '1'
			@draw.moveTo @posX+@chaSize/4, @posY
			@draw.lineTo @posX, @posY+@chaSize/4
		if code[2] is '1'
			@draw.moveTo @posX+@chaSize/4, @posY
			@draw.lineTo @posX+@chaSize/2, @posY+@chaSize/4
		if code[3] is '1'
			@draw.moveTo @posX+@chaSize/2, @posY
			@draw.lineTo @posX+@chaSize/4, @posY+@chaSize/4
		@draw.closePath()
		@draw.stroke()
		if @place<3 then @place+=1 else
			@place= 0
			if @col is 0 then @col=1 else
				@col = 0
				@cha += 1
	changeLine: ->
		@line += 1
		@cha = 0
window.onload = ->
	cvs = document.getElementById 'cvs'
	x = cvs.getContext '2d'
	t = new Text x
	document.onkeydown = (e) =>
		switch e.keyCode
			when 13 then t.changeLine() # Enter to change line
			when 49 then t.forword '0000' # key '1' means '  '
			when 50 then t.forword '0100' # key '2' means '\ '
			when 51 then t.forword '1000' # key '3' means '/ '
			when 52 then t.forword '1100' # key '4' means 'X '
			when 81 then t.forword '0001' # key 'q' means ' \'
			when 87 then t.forword '0101' # key 'w' means '\\'
			when 69 then t.forword '1001' # key 'e' means '/\'
			when 82 then t.forword '1101' # key 'r' means 'X\'
			when 65 then t.forword '0010' # key 'a' means ' /'
			when 83 then t.forword '0110' # key 's' means '\/'
			when 68 then t.forword '1010' # key 'd' means '//'
			when 70 then t.forword '1110' # key 'f' means 'X/'
			when 90 then t.forword '0011' # key 'z' means ' X'
			when 88 then t.forword '0111' # key 'x' means '\X'
			when 67 then t.forword '1011' # key 'c' means '/X'
			when 86 then t.forword '1111' # key 'v' means 'XX'
			else t.forword()
