
(ns app.render
  (:require [respo.render.html :refer [make-string]]
            [shell-page.core :refer [make-page spit slurp]]
            [app.comp.container :refer [comp-container]]
            [app.schema :as schema]))

(def base-info
  {:title "题叶@jiyinyiyong",
   :icon "http://cdn.tiye.me/logo/tiye.jpg",
   :ssr nil,
   :append-html (slurp "entry/ga.html")})

(defn dev-page []
  (make-page
   ""
   (merge
    base-info
    {:styles [], :scripts ["/main.js" "/browser/lib.js" "/browser/main.js"]})))

(def preview? (= "preview" js/process.env.prod))

(defn prod-page []
  (let [html-content (make-string (comp-container schema/store true))
        webpack-info (.parse js/JSON (slurp "dist/webpack-manifest.json"))
        cljs-info (.parse js/JSON (slurp "dist/cljs-manifest.json"))
        cdn (if preview?
              (do (println "Rendering in preview mode!") "")
              (str "http://cdn.tiye.me/tiye.me/"))]
    (make-page
     html-content
     (merge
      base-info
      {:styles [(str cdn (aget webpack-info "main.css"))],
       :scripts [(str cdn (-> cljs-info (aget 0) (aget "js-name")))
                 (str cdn (-> cljs-info (aget 1) (aget "js-name")))],
       :ssr "respo-ssr"}))))

(defn main! []
  (if (= js/process.env.env "dev")
    (spit "target/index.html" (dev-page))
    (spit "dist/index.html" (prod-page))))
