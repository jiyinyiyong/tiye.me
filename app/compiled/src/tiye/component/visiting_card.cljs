
(ns tiye.component.visiting-card
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span]]
            [tiye.style.layout :as layout]
            [tiye.style.widget :as widget]))

(defn render []
  (fn [state mutate!]
    (div
      {:style (merge widget/card layout/vertical-box)}
      (div {:style (merge widget/avatar {})})
      (span
        {:style (merge widget/title {}),
         :attrs {:inner-text "题叶, ChenYong"}})
      (span
        {:style (merge widget/description {}),
         :attrs {:inner-text "FP, GUI & Writing"}}))))

(def comp-visiting-card (create-comp :visiting-card render))
