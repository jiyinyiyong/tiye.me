
var
  stir $ require :stir-template
  fs $ require :fs
  ({}~ html head title meta link script body div) stir

= module.exports $ \ (data)
  return $ stir.render
    stir.doctype
    html null
      head null
        title null ":题叶 jiyinyiyong"
        meta $ {} (:charset :utf-8)
        meta $ {} (:name :viewport) (:content ":initial-scale=1,minimum-scale=1")
        meta $ {} (:name :description) (:content ":题叶的个人主页")
        meta $ {} (:name :keywords) (:content ":题叶 jiyinyiyong")
        cond (not data.dev)
          fs.readFileSync :html/ga.html :utf8
          , undefined
        link $ {} (:rel :icon)
          :href :http://tp1.sinaimg.cn/1651843872/180/40048616024/1
        script $ {} (:src data.vendor) (:defer true)
        script $ {} (:src data.main) (:defer true)
      body null
        div $ {} (:id :app)
