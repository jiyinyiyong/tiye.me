
(ns app.comp.profile
  (:require-macros [respo.macros :refer [defcomp <> div button span]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.core :refer [create-comp]]
            [respo.comp.space :refer [=<]]
            [app.comp.tags :refer [comp-tags]]))

(def style-profile {:padding "80px 0", :background-color (hsl 0 0 0 0.24)})

(def style-names {:color :white, :font-size 32})

(def style-intro {:color :white, :font-size 20})

(defcomp
 comp-profile
 ()
 (div
  {:style (merge ui/flex ui/column-center style-profile)}
  (div
   {}
   (<> div "@题叶 @jiyinyiyong" style-names)
   (<> div "程序员, ClojureScript 爱好者" style-intro))
  (comp-tags)))
