
(ns app.config )

(def cdn?
  (cond
    (exists? js/window) false
    (exists? js/process) (= "true" js/process.env.cdn)
    :else false))

(def dev?
  (let [debug? (do ^boolean js/goog.DEBUG)]
    (cond
      (exists? js/window) debug?
      (exists? js/process) (not= "true" js/process.env.release)
      :else true)))

(def site
  {:storage "tiye-site",
   :dev-ui "http://localhost:8100/main.css",
   :release-ui "http://cdn.tiye.me/favored-fonts/main.css",
   :cdn-url "http://cdn.tiye.me/tiye-site/",
   :cdn-folder "tiye.me:cdn/tiye-site",
   :title "题叶@jiyinyiyong",
   :icon "http://cdn.tiye.me/logo/tiye.jpg",
   :storage-key "tiye-site",
   :upload-folder "tiye.me:repo/tiye/tiye.me/"})
