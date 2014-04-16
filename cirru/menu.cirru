body#app
  :v-on "click: showBackground"
  #title
    :v-on "click: showDetail"
    :v-show "!open"
    #name
      span#name-nice
        = 题叶
      span#name-id
        = jiyinyiyong
    #about
      span#real-name
        = ChenYong,
      span#birth-year
        = "1991,"
      span#introduction
        a
          :href https://github.com/tiye/tiye.me
          :v-on "click: noevent"
          :target _blank
          = Coding
        span
          = "in CoffeeScript, Go &amp; Cirru"
  #menu
    :v-show open
    #category
      .candidates
        :v-repeat menu
        .aspect
          :v-on "click: selectAspect(this.category)"
          :v-class "aspectState(this.category)"
          :v-model category
    #resources
      .candidates
        :v-repeat menu
        :v-show "onAspect(category)"
        .candidates
          :v-repeat resources
          a.link
            :v-attr "href: link"
            :v-text name
            :target _blank
        .description
          :v-text description