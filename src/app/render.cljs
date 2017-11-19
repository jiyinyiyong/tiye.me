
(ns app.render
  (:require [respo.render.html :refer [make-string]]
            [shell-page.core :refer [make-page spit slurp]]
            [app.comp.container :refer [comp-container]]
            [app.schema :as schema]
            [cljs.reader :refer [read-string]]))

(def base-info
  {:title "题叶@jiyinyiyong",
   :icon "http://cdn.tiye.me/logo/tiye.jpg",
   :ssr nil,
   :inline-styles [(slurp "entry/main.css")],
   :append-html (slurp "entry/ga.html")})

(defn dev-page []
  (make-page
   ""
   (merge base-info {:styles [], :scripts ["/browser/lib.js" "/browser/main.js"]})))

(def preview? (= "preview" js/process.env.prod))

(defn prod-page []
  (let [html-content (make-string (comp-container schema/store true))
        assets (read-string (slurp "dist/assets.edn"))
        cdn (if preview? "" (str "http://cdn.tiye.me/tiye.me/"))
        prefix-cdn #(str cdn %)]
    (make-page
     html-content
     (merge
      base-info
      {:styles [], :scripts (map #(-> % :output-name prefix-cdn) assets), :ssr "respo-ssr"}))))

(defn main! []
  (if (= js/process.env.env "dev")
    (spit "target/index.html" (dev-page))
    (spit "dist/index.html" (prod-page))))
