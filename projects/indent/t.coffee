
fs = require 'fs'
file1 = fs.readFileSync 't', 'utf8'
file2 = fs.readFileSync 't.html', 'utf8'
l = file2.length
file2 = (file2.slice 0, l-13) + (file2.slice l-13, l)
for i in file1
	switch i
		when '\t' then file2 = file2.concat '<span class="indent">&nbsp;&nbsp;&nbsp;&nbsp;</span>'
		when '\n' then file2 = file2.concat '<br/>'
		when ' ' then file2 = file2.concat '<span class="space">&nbsp;</span>'
		else file2 = file2.concat '<span>'+i+'</span>'
file2 += '</body></html>'
file2 = fs.writeFileSync 'index.html', file2, encoding='utf8'
