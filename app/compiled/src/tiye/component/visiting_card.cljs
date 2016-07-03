
(ns tiye.component.visiting-card
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span]]
            [tiye.style.layout :as layout]
            [tiye.style.widget :as widget]
            [tiye.style.typeset :as typeset]
            [respo.component.space :refer [comp-space]]
            [tiye.component.text :refer [comp-text]]))

(defn render []
  (fn [state mutate!]
    (div
      {:style (merge widget/card layout/horizontal-box)}
      (div {:style (merge widget/avatar)})
      (comp-space 20 nil)
      (div
        {}
        (:style (merge layout/vertical))
        (div
          {}
          (comp-text "题叶" (merge widget/title))
          (comp-space 8 nil)
          (comp-text "@jiyinyiyong" widget/title))
        (div
          {}
          (comp-text
            "FP, GUI & Writing"
            (merge typeset/description)))))))

(def comp-visiting-card (create-comp :visiting-card render))
