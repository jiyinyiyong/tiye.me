
(ns app.comp.container
  (:require-macros [respo.macros :refer [defcomp <> div button span]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.core :refer [create-comp]]
            [respo.comp.space :refer [=<]]
            [app.comp.profile :refer [comp-profile]]
            [app.schema :refer [information]]
            [app.comp.search :refer [comp-search]]
            [app.comp.tags :refer [comp-tags]]))

(def style-container
  {:font-family "Avenir, Roboto, Arial, Serif",
   :font-weight 300,
   :background-color (hsl 0 0 0 0.24),
   :padding "120px 0",
   :overflow :auto,
   :min-height "100%",
   :color :white,
   :align-items nil,
   :justify-content nil})

(def style-area {:margin :auto})

(defcomp
 comp-container
 (store mock-ssr?)
 (let [show-profile? (< (count (:query store)) 2)]
   (div
    {:style (merge ui/global ui/fullscreen ui/column-center style-container),
     :class-name "app-container"}
    (div
     {:style (merge ui/column-center style-area)}
     (if show-profile? (comp-profile))
     (if show-profile? (=< nil 20))
     (comp-tags)
     (=< nil 20)
     (comp-search (:buffer store) (:query store) mock-ssr?)))))
