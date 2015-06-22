
var
  stir $ require :stir-template
  (object~ html head title meta link script body div) stir

= module.exports $ \ (data)
  return $ stir.render
    stir.doctype
    html null
      head null
        title null ":题叶 jiyinyiyong"
        meta $ object (:charset :utf-8)
        link $ object (:rel :icon)
          :href :http://tp1.sinaimg.cn/1651843872/180/40048616024/1
        script $ object (:src data.vendor) (:defer true)
        script $ object (:src data.main) (:defer true)
      body null
