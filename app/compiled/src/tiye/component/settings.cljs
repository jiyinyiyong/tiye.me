
(ns tiye.component.settings
  (:require [respo.alias :refer [create-comp div span input]]
            [respo.component.space :refer [comp-space]]
            [respo.component.debug :refer [comp-debug]]
            [tiye.component.text :refer [comp-text]]
            [tiye.style.widget :as widget]
            [tiye.style.layout :as layout]
            [tiye.style.typeset :as typeset]))

(defn on-input [e dispatch! mutate!]
  (dispatch! :state/nickname (:value e)))

(defn render [session]
  (fn [state mutate]
    (div
      {}
      (div
        {}
        (comp-text "Nickname:" typeset/description)
        (comp-space 8 nil)
        (input
          {:style widget/textbox,
           :event {:input on-input},
           :attrs
           {:placeholder "Someone", :value (:nickname session)}})))))

(def comp-settings (create-comp :settings render))
