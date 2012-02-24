
json2page = (data) ->
  if typeof data is 'string' then return ">#{data}"
  unless typeof data is 'object'
    err "data (#{data}) isnt object"
    return 'break'
  html = ''
  attrs = []
  tags = []
  for key, value of data
    parse = key.match /^(\w*)\$(\w*)$/
    if parse then tags.push [parse, value]
    else if check = key.match /^[a-zA-Z_]\w+$/ then attrs.push key else
      err "key (#{key}) cant be parsed"
      return 'break'
  css = []
  for item in attrs
    if css_tag = item.match /^css\d*$/ then css.push item
    else if typeof data[item] is 'string' then html += " #{item}='#{data[item]}' " else
      err "data[item] (#{data[item]}) seems not match"
      return 'break'
  for item in css
    o data[item]
    if typeof data[item] is 'object' then html += render_css data[item] else
      err "css should use objects here, but got (#{item})"
      return 'break'
  html += '>'
  for item in tags
    _id = item[0][1]
    _tag = item[0][2] || 'div'
    html += "<#{_tag} id='#{_id}' "
    html += json2page item[1]
    html += "</#{_tag}>"
  return html[1..]

render_css = (data) ->
  css_content = "style='"
  for key, value of data
    if typeof value is 'string' then css_content += " #{key}: #{value};" else
      if typeof value is 'number' then css_content += " #{key}: #{value}px;" else
        err "typeof value (#{value}) dont match here"
        return 'break'
  css_content += "'"
  return css_content
      
err = (e) ->
  o 'Error: ', e
o = console.log
data =
  $html: 'nothing yet'
  $a:
    css:
      width: 200
    class: 'add a'
    attr: 'd'
o json2page data