
q = (x) -> document.querySelector x
signNewSite = '➦'
Vue = require 'vue'

app = new Vue
  el: '#app'
  data:
    open: yes
    menu: require('./menu').menu
    default: 'likes'
  methods:
    toggleView: ->
      @open = not @open
    selectAspect: (category) ->
      @default = category
    onAspect: (category) ->
      @default is category
    aspectState: (category) ->
      if @default is category
        'aspect-open'
      else
        'aspect-close'
  computed:
    appMode:
      $get: ->
        if @open then 'menu-open' else 'menu-hide'

console.log menu