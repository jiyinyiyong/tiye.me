
(ns app.comp.detail
  (:require-macros [respo.macros :refer [defcomp <> div button span]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.core :refer [create-comp]]
            [respo.comp.space :refer [=<]]))

(def style-title {:font-size 32})

(def style-content {:font-size 20})

(def style-detail {:padding 32, :background-color (hsl 0 40 20), :color :white})

(def style-close {:color :white, :margin-top 80, :display :inline-block, :cursor :pointer})

(defn on-close [e d! m!] (d! :select nil))

(defcomp
 comp-detail
 (data)
 (div
  {:style (merge ui/flex style-detail)}
  (div {:style style-title, :inner-text (:title data)})
  (div {:style style-content, :inner-text (:content data)})
  (div {} (span {:style style-close, :inner-text "Close", :on {:click on-close}}))))
