
(ns app.comp.tags
  (:require-macros [respo.macros :refer [defcomp <> div button span]])
  (:require [clojure.string :as string]
            [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.core :refer [create-comp]]
            [respo.comp.space :refer [=<]]
            [app.schema :refer [information]]))

(def style-tag
  {:color :white,
   :display :inline-block,
   :border (str "1px solid " (hsl 0 0 100)),
   :border-radius "16px",
   :padding "0 8px",
   :font-size 20,
   :height 32,
   :line-height "32px",
   :margin "0 8px",
   :cursor :pointer})

(defn on-select [aspect] (fn [e d! m!] (d! :select aspect)))

(defcomp
 comp-tags
 ()
 (div
  {}
  (->> (keys information)
       (map
        (fn [aspect]
          [aspect
           (div
            {:style style-tag,
             :inner-text (let [tag (name aspect)]
               (str (string/upper-case (first tag)) (subs tag 1))),
             :on {:click (on-select aspect)}})])))))
