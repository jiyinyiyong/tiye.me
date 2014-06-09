
doctype
html
  head
    link (:rel stylesheet) (:href css/style.css)
    link (:type image/x-icon) (:rel "shortcut icon")
      :href http://tiye.qiniudn.com/leaf.jpg
    meta (:charset utf-8)
    @if (@ inDev) $ @block
      link (:rel stylesheet) (:href css/resource-dev.css)
      script (:src bower_components/react/react.js)
    @if (@ inBuild) $ @block
      link (:rel stylesheet) (:href css/resource-build.css)
      script (:src http://cdn.staticfile.org/react/0.10.0/react.min.js)
      @insert ga.html
    script (:defer) (:src build/main.js)
  body