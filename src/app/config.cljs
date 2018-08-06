
(ns app.config (:require [app.util :refer [get-env!]]))

(def bundle-builds #{"release" "local-bundle"})

(def dev?
  (if (exists? js/window)
    (do ^boolean js/goog.DEBUG)
    (not (contains? bundle-builds (get-env! "mode")))))

(def site
  {:storage "tiye-site",
   :dev-ui "http://localhost:8100/main.css",
   :release-ui "http://cdn.tiye.me/favored-fonts/main.css",
   :cdn-url "http://cdn.tiye.me/tiye-site/",
   :cdn-folder "tiye.me:cdn/tiye-site",
   :title "题叶@jiyinyiyong",
   :icon "http://cdn.tiye.me/logo/tiye.jpg",
   :upload-folder "tiye.me:repo/tiye/tiye.me/"})
