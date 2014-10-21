
doctype
html
  head
    title "题叶 @jiyinyiyong"
    link (:type image/x-icon) (:rel "shortcut icon")
      :href //dn-tiye.qbox.me/leaf.jpg
    meta (:charset utf-8)
    meta (:name description)
     :content "题叶, @jiyinyiyong, 1991, CoffeeScript & Cirru"
    script(:src dist/vendor.min.js)
    @if (@ dev)
      @block
        link (:rel stylesheet) (:href css/main.css)
        link (:rel stylesheet) (:href css/dev.css)
        script (:defer) (:src build/main.js)
      @block
        link (:rel stylesheet) (:href dist/main.min.css)
        script (:defer) (:src dist/main.min.js)
        @insert cirru/ga.html
  body
