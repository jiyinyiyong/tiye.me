
var
  React $ require :react
  Page $ React.createFactory $ require :./page

require :../styles/main.css

var render $ \ ()
  React.render (Page) document.body

render

window.addEventListener :resize render
