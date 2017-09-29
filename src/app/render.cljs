
(ns app.render
  (:require [respo.render.html :refer [make-string]]
            [shell-page.core :refer [make-page spit slurp]]
            [app.comp.container :refer [comp-container]]
            [app.schema :as schema]))

(def base-info
  {:title "题叶@jiyinyiyong",
   :icon "http://repo-cdn.b0.upaiyun.com/logo/tiye.jpg",
   :ssr nil,
   :inline-html (slurp "entry/ga.html")})

(defn dev-page []
  (make-page
   ""
   (merge
    base-info
    {:styles [], :scripts ["/main.js" "/browser/lib.js" "/browser/main.js"]})))

(def preview? (= "preview" js/process.env.prod))

(defn prod-page []
  (let [html-content (make-string (comp-container schema/store true))
        manifest (.parse js/JSON (slurp "dist/assets-manifest.json"))
        cljs-manifest (.parse js/JSON (slurp "dist/manifest.json"))
        cdn (if preview?
              (do (println "Rendering in preview mode!") "")
              (str "http://repo-cdn.b0.upaiyun.com/tiye.me/"))]
    (make-page
     html-content
     (merge
      base-info
      {:styles [(str cdn (aget manifest "main.css"))],
       :scripts [(str cdn (-> cljs-manifest (aget 0) (aget "js-name")))
                 (str cdn (-> cljs-manifest (aget 1) (aget "js-name")))],
       :ssr "respo-ssr"}))))

(defn main! []
  (if (= js/process.env.env "dev")
    (spit "target/index.html" (dev-page))
    (spit "dist/index.html" (prod-page))))
