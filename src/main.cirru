
var
  deku $ require :deku
  Page $ deku.element.bind null $ require :./page

require :../styles/main.css

var render $ \ ()
  var app $ deku.tree (Page)
  deku.render app (document.querySelector :#app)

render

window.addEventListener :resize render
