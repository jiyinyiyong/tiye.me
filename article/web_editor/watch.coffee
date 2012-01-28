
fs = require 'fs'
exec = require('child_process').exec
coffee_file = 'editor.coffee'
compile = ->
	exec "coffee -bc #{coffee_file}"
fs.watch coffee_file, (cur, pre) ->
	do compile
