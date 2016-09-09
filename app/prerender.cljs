
(ns prerender.core
  (:require
    [respo.alias :refer [html head title script style meta' div link body]]
    [respo.render.static-html :refer [make-html make-string]]
    [tiye.component.container :refer [comp-container]]
    [planck.core :refer [slurp spit]]))

(defn use-text [x] {:attrs {:innerHTML x}})

(defn html-dsl [data html-content ssr-stages]
  (make-html
    (html {}
      (head {}
        (title (use-text "题叶 @jiyinyiyong"))
        (link {:attrs {:rel "icon" :type "image/jpg" :href "tiye-400x400.jpg"}})
        (meta'{:attrs {:charset "utf-8"}})
        (meta' {:attrs {:name "viewport" :content "width=device-width, initial-scale=1"}})
        (meta' {:attrs {:id "ssr-stages" :content (pr-str ssr-stages)}})
        (meta' {:attrs {:name "description" :content "题叶, jiyinyiyong, Profile, About, Contact"}})
        (meta' {:attrs {:name "language" :content "zh-cn"}})
        (style (use-text "body {margin: 0;}"))
        (style (use-text "body * {box-sizing: border-box;}"))
        (if (:build? data)
          (div {:attrs {:innerHTML (slurp "html/ga.html")}}))
        (script {:attrs {:id "config" :type "text/edn" :innerHTML (pr-str data)}}))
      (body {}
        (div {:attrs {:id "app" :innerHTML html-content}})
        (script {:attrs {:src "main.js"}})))))

(defn generate-html [ssr-stages]
  (let [ tree (comp-container {} ssr-stages)
         html-content (make-string tree)]
    (html-dsl {:build? true} html-content ssr-stages)))

(defn -main []
  (spit "target/index.html" (generate-html #{:shell})))

(-main)
