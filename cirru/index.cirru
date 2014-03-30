
doctype
html
  head
    link
      :rel stylesheet
      :href css/style.css
    link
      :type image/x-icon
      :rel "shortcut icon"
      :href http://tiye.qiniudn.com/leaf.jpg
    meta
      :charset utf-8
    script
      :defer
      :src build/build.js
    @insert ga.html
  @partial menu.cirru