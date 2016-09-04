
(ns tiye.component.message
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span]]
            [tiye.component.text :refer [comp-text]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.space :refer [comp-space]]
            [tiye.style.layout :as layout]
            [tiye.style.widget :as widget]
            [tiye.util.format :refer [readable-time]]))

(def style-info
 {:line-height "24px", :color (hsl 0 0 80), :font-size "12px"})

(def style-content {:font-size "14px"})

(def style-time {:display "inline-block"})

(defn render [message]
  (fn [state mutate!]
    (div
      {:style (merge widget/message)}
      (div
        {:style style-content}
        (comp-text
          (:text message)
          (merge (if (:writing? message) {:color (hsl 0 0 70)}))))
      (div
        {:style style-info}
        (div
          {:style widget/username}
          (comp-text (or (:nickname message) "Someone") nil))
        (comp-space 8 nil)
        (div
          {:style style-time}
          (comp-text (readable-time (:time message)) nil)))
      (comment comp-debug message {:opacity 0.1, :right 0}))))

(def comp-message (create-comp :message render))
