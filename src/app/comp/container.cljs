
(ns app.comp.container
  (:require-macros [respo.macros :refer [defcomp <> div button span]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.core :refer [create-comp]]
            [respo.comp.space :refer [=<]]
            [app.comp.profile :refer [comp-profile]]
            [app.schema :refer [information]]
            [app.comp.detail :refer [comp-detail]]))

(def style-card
  {:flex 1,
   :width "100%",
   :background-image "url(http://logo.tiye.me/leaf.jpg)",
   :background-size :cover,
   :background-position :center,
   :transition-duration "600ms"})

(def style-card-displaying {:width "30%"})

(def style-result {:width "0%", :transition-duration "600ms"})

(def style-result-displaying {:width "70%"})

(def style-container
  {:font-family "Josefin Sans, Serif", :font-weight 100, :background-color (hsl 0 40 20)})

(defcomp
 comp-container
 (store)
 (let [selected (:selected store)]
   (div
    {:style (merge ui/global ui/fullscreen ui/row style-container)}
    (div
     {:style (merge ui/column style-card (if (some? selected) style-card-displaying))}
     (comp-profile))
    (div
     {:style (merge ui/column style-result (if (some? selected) style-result-displaying))}
     (if (some? selected) (comp-detail (get information selected)))))))
