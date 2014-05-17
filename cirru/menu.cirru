body#app
  #title
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
          :target _blank
          = Coding
        span
          = "in CoffeeScript &amp; Cirru"
  #menu
    #category
      .aspect
        :v-repeat menu
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