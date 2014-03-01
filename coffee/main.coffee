
q = (x) -> document.querySelector x
signNewSite = '➦'
Vue = require 'vue'

console.log Vue

app = new Vue
  el: '#app'
  data:
    open: no
  methods:
    toggleView: ->
      @open = not @open
  computed:
    appMode:
      $get: ->
        if @open then 'menu-open' else 'menu-hide'

menu: new Vue
  el: '#menu'
  data: require('./menu').menu

console.log q