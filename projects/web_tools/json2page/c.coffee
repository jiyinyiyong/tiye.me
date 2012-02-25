
require 'coffee-script'
j = (require './json2page').json2page

data =
  $data:
    $p0: 'Json style code in CoffeeScript'
    $p1: 'Tring to be clearn like coffee'
    $p2: 'Compiles to HTML which contains CSS'
    $p3: 'Maybe I can use it in rendering pages in browser'
console.log (j data).replace(/>/g, '&gt;').replace(/</g, '&lt;')