
(ns app.comp.tags
  (:require [clojure.string :as string]
            [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.macros :refer [defcomp list-> <> div button span]]
            [respo.comp.space :refer [=<]]
            [app.schema :refer [tags]]))

(def style-tag
  {:color :white,
   :display :inline-block,
   :border (str "1px solid " (hsl 0 0 100 0.5)),
   :border-width "0 0 1px 0",
   :font-size 14,
   :height 24,
   :line-height "24px",
   :margin 4,
   :cursor :pointer,
   :user-select :none})

(defn on-select [aspect] (fn [e d! m!] (d! :query (name aspect))))

(def style-tags {:padding "0 24px"})

(defcomp
 comp-tags
 ()
 (list->
  :div
  {:style style-tags}
  (->> tags
       (map
        (fn [aspect]
          [aspect
           (div
            {:style style-tag,
             :inner-text (let [tag (name aspect)]
               (str (string/upper-case (first tag)) (subs tag 1))),
             :on {:click (on-select aspect)}})])))))
