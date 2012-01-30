#!/usr/bin/env coffee
style = """
	body{
		background: hsl(0,96%,96%);
		font-size: 13px;
		padding: 26px 130px;
		line-height: 26px;
	}
	body>code, pre{
		padding: 0px 3px;
		margin: 0px 3px;
		background: hsl(0,94%,95%);
		border: 1px solid hsl(0,96%,86%);
	}
	p{
		margin: 0px;
	}
	pre{
		margin: 0px;
		width: 600px;
	}
	body>*{
		margin: 0px;
	}
	a{
		color: hsl(240,40%,50%);
		text-decoration: none;
	}
	"""

o = console.log
tool = (require './liuxian_compile').tool
fs = require 'fs'
argvs = process.argv
unless argvs.length is 3
	o 'Result from Argvs: ', argvs
	o 'Any file?'
else
	o argvs[2]
	source = (argvs[2].match /(^.+)\.gfm/)
	unless source
		o 'Result from Regex: ', source
		o 'Probably wrong filename'
	else
		# unless source['1'] then o 'Can\'t find .gfm File'
		# else
		filename = source['1'] + '.gfm'
		file = fs.readFileSync filename, 'utf-8'
		html =
			"
			<title>
			#{source['1']}笔记
			</title>
			<style>
			#{style}
			</style>
			"
		html += tool file
		new_filename = source['1'] + '.html'
		fs.writeFileSync(new_filename, html, encoding='utf8')
		o 'Wrote to .html file: ', new_filename
