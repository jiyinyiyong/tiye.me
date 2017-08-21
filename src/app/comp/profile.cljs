
(ns app.comp.profile
  (:require-macros [respo.macros :refer [defcomp <> div button span input]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.core :refer [create-comp]]
            [respo.comp.space :refer [=<]]
            [app.comp.tags :refer [comp-tags]]
            [app.comp.search :refer [comp-search]]))

(def style-profile
  {:padding "80px 0", :background-color (hsl 0 0 0 0.24), :justify-content :flex-start})

(def style-names {:color :white, :font-size 32})

(def style-intro {:color :white, :font-size 16})

(defcomp
 comp-profile
 (query)
 (div
  {:style (merge ui/flex ui/column-center style-profile)}
  (div
   {}
   (<> div "@题叶 @jiyinyiyong" style-names)
   (<> div "程序员, ClojureScript 爱好者" style-intro))
  (=< nil 40)
  (comp-search query)
  (=< nil 40)
  (comp-tags)))
