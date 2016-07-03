
(ns tiye.component.message
  (:require [respo.alias :refer [create-comp div span]]
            [tiye.component.text :refer [comp-text]]
            [respo.component.debug :refer [comp-debug]]
            [respo.component.space :refer [comp-space]]
            [tiye.style.layout :as layout]
            [tiye.style.widget :as widget]))

(defn render [message]
  (fn [state mutate!]
    (div
      {:style (merge layout/horizontal widget/message)}
      (div
        {:style widget/username}
        (comp-text (or (:nickname message) "Someone") nil))
      (comp-space 8 nil)
      (comp-text (:text message) layout/flex)
      (comment comp-debug message {:opacity 0.1, :right 0}))))

(def comp-message (create-comp :message render))
