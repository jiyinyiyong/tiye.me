
(ns tiye.component.offline-tip
  (:require [respo.alias :refer [create-comp div span]]
            [tiye.component.text :refer [comp-text]]
            [tiye.style.widget :as widget]
            [tiye.style.layout :as layout]))

(defn render []
  (fn [state mutate!]
    (div
      {:style
       (merge
         layout/vertical-box
         widget/notice-large
         {:height "200px"})}
      (comp-text "Offline" nil))))

(def comp-offline-tip (create-comp :offline-tip render))