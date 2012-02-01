
fs = require 'fs'
exec = require('child_process').exec
coffee_file = 'trinary.coffee'
o = console.log
compile = ->
	exec "coffee #{coffee_file}", (err, stdout, stderr) ->
		if err then o err
		else
			o "stdout: ", stdout
fs.watch coffee_file, (cur, pre) ->
	o "发现变动, 开始执行"
	do compile
