
q = (x) -> document.querySelector x
Vue = require 'vue'

app = new Vue
  el: '#app'
  data:
    open: no
    menu: require('./menu').menu
    default: 'likes'
  methods:
    selectAspect: (category) ->
      @default = category
    onAspect: (category) ->
      @default is category
    aspectState: (category) ->
      if @default is category
        'aspect-open'
      else
        'aspect-close'
  computed: {}