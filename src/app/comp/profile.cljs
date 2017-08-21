
(ns app.comp.profile
  (:require-macros [respo.macros :refer [defcomp <> div button span input]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.core :refer [create-comp]]
            [respo.comp.space :refer [=<]]
            [app.comp.tags :refer [comp-tags]]
            [app.comp.search :refer [comp-search]]))

(def style-profile {:flex-shrink 0})

(def style-names {:color :white, :font-size 32})

(def style-intro {:color :white, :font-size 16})

(defcomp
 comp-profile
 ()
 (div
  {:style (merge ui/column-center style-profile)}
  (div
   {}
   (<> div "@题叶 @jiyinyiyong" style-names)
   (<> div "Programmer. ClojureScript 爱好者" style-intro))))
