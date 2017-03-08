
(ns tiye.component.message
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span]]
            [tiye.component.text :refer [comp-text]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.space :refer [comp-space]]
            [tiye.style.layout :as layout]
            [tiye.style.widget :as widget]
            [tiye.util.format :refer [readable-time]]))

(def style-time {:display "inline-block"})

(def style-content {:font-size "14px", :word-break "break-word"})

(def style-remove
  {:display "inline-block",
   :color (hsl 0 90 80),
   :padding "0 8px",
   :border-radius "8px",
   :position "absolute",
   :right "8px",
   :cursor "pointer",
   :font-size "13px"})

(defn on-remove [id] (fn [e dispatch!] (dispatch! :message/remove id)))

(def style-info {:font-size "12px", :color (hsl 0 0 80), :line-height "20px"})

(defn render [message]
  (fn [state mutate!]
    (let [nickname (:nickname message)]
      (div
       {:style (merge widget/message)}
       (div
        {:style style-info}
        (div {:style (merge widget/username)} (comp-text (or nickname "Someone") nil))
        (comp-space 8 nil)
        (div {:style style-time} (comp-text (readable-time (:time message)) nil))
        (div
         {:style style-remove, :event {:click (on-remove (:id message))}}
         (comp-text "rm" nil)))
       (div
        {:style style-content}
        (comp-text (:text message) (merge (if (:writing? message) {:color (hsl 0 0 70)}))))
       (comment comp-debug message {:opacity 0.1, :right 0})))))

(def comp-message (create-comp :message render))
