
(ns app.comp.profile
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.macros :refer [defcomp <> div button span input]]
            [respo.comp.space :refer [=<]]
            [app.comp.tags :refer [comp-tags]]
            [app.comp.search :refer [comp-search]]))

(def style-intro {:color :white, :font-size 14})

(def style-names {:color :white, :font-size 16})

(def style-profile {:flex-shrink 0})

(defcomp
 comp-profile
 ()
 (div
  {:style (merge ui/center style-profile)}
  (div {} (<> span "@题叶 @jiyinyiyong" style-names))
  (div {} (<> span "Web developer. ClojureScript 爱好者" style-intro))))
