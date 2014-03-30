
q = (x) -> document.querySelector x
Vue = require 'vue'

app = new Vue
  el: '#app'
  data:
    open: no
    menu: require('./menu').menu
    default: 'likes'
  methods:
    showDetail: (event) ->
      event.stopPropagation()
      @open = yes
    selectAspect: (category) ->
      @default = category
    onAspect: (category) ->
      @default is category
    aspectState: (category) ->
      if @default is category
        'aspect-open'
      else
        'aspect-close'
    noevent: (event) ->
      event.stopPropagation()
    showBackground: (event) ->
      if event.target.id is 'app'
        @open = no
  computed: {}