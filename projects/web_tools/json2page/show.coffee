
$ ->
  editor = ace.edit 'editor'
  editor.setTheme "ace/theme/twilight"
  CoffeeMode = require("ace/mode/coffee").Mode
  editor.getSession().setMode (new CoffeeMode())
  ($ '#run').click ->
    source = editor.getSession().getValue()
    html = json2page source
    console.log html