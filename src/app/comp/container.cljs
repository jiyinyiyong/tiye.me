
(ns app.comp.container
  (:require-macros [respo.macros :refer [defcomp <> div button span]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.core :refer [create-comp]]
            [respo.comp.space :refer [=<]]
            [app.comp.profile :refer [comp-profile]]
            [app.schema :refer [information]]))

(def style-container
  {:font-family "Josefin Sans, Serif",
   :font-weight 100,
   :background-color (hsl 0 40 20),
   :background-image "url(http://logo.tiye.me/leaf.jpg)",
   :background-size :cover,
   :background-position :center})

(defcomp
 comp-container
 (store)
 (let [query (:query store)]
   (div {:style (merge ui/global ui/fullscreen ui/row style-container)} (comp-profile query))))
