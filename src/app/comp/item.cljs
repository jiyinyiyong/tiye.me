
(ns app.comp.item
  (:require-macros [respo.macros :refer [defcomp <> div button span input a]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.core :refer [create-comp]]
            [respo.comp.space :refer [=<]]))

(def style-item {:color :white, :width 600, :max-width "80vw"})

(def style-title {:font-size 16, :line-height "24px", :margin-top 16})

(def style-content {:font-size 14, :line-height "20px"})

(def style-link {:color (hsl 200 80 80), :line-height "24px"})

(defn comp-item [item]
  (div
   {:style style-item}
   (<> div (:title item) style-title)
   (<> span (:content item) style-content)
   (div
    {}
    (->> (:links item)
         (map-indexed
          (fn [idx link]
            [idx
             (div
              {}
              (a
               {:style style-link,
                :inner-text (:text link),
                :href (:url link),
                :target "_blank"}))]))))))
