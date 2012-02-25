
$ ->
  editor = ace.edit 'editor'
  editor.setTheme "ace/theme/twilight"
  CoffeeMode = require("ace/mode/coffee").Mode
  editor.getSession().setMode (new CoffeeMode())
  editor.getSession().setTabSize 2
  ($ '#run').click ->
    source = editor.getSession().getValue()
    console.log 'source', source
    json_ = CoffeeScript.compile source, bare: 'on'
    eval "window.json = "+json_
    # console.log json
    html = json2page json
    try
      html = css_beautify html
    catch error
      console.log 'no css here'
    html = style_html html
    html = html.replace(/>/g, '&gt;').replace(/</g, '&lt;')
    ($ '#paint').empty().append html