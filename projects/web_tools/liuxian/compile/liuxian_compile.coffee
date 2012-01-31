
o = console.log
demo = """
ds`gfg`fsd
fsdfsdfsdfs
http://baidu.com

fsdfsdfs
dfdsfsdfsd
fsdf
	sdfsdf
	sdfsdf
"""
tool = (demo) ->
	lines = demo.split '\n'
	lines.push ''
	lines.unshift ''
	# o lines
	for i in [1..(lines.length-2)]
		if lines[i][0..0] is '@'
			lines[i] = '<p><b>' + lines[i][1..] + '</b></p>'
		else if lines[i][0..0] is '\t'
			lines[i] = lines[i].replace /</g, '&lt;'
			lines[i] = lines[i].replace />/g, '&gt;'
			lines[i] = lines[i].replace /\n/g, '<br/>'
		else
			lines[i] = lines[i] + '<br/>'
		if lines[i][0..0] is ''
			lines[i] = '<br/>'
		else
			lines[i] = lines[i].replace /(`)([^`\n]+)(`)/g, "<code>$2</code>"
			lines[i] = lines[i].replace /([a-zA-z]+:\/\/)([^\s<]*)/g, "<a href='$1$2'>$2</a>"
		if lines[i][0..0] isnt '\t'
			if lines[i+1][0..0] is '\t'
				lines[i] = lines[i] + '<pre><code>'
		else
			if lines[i+1][0..0] isnt '\t'
				lines[i] = lines[i] + '</code></pre>'
			else
				lines[i] = lines[i] + '<br/>'
		if lines[i][0..0] is '\t'
			lines[i] = lines[i][1..]
	# o lines
	html = ''
	for line in lines
		html += line
	html
# tool demo
exports.tool = tool
