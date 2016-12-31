
(ns tiye.component.container
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span input]]
            [respo-ui.style :as ui]
            [tiye.style.widget :as widget]
            [tiye.style.layout :as layout]
            [tiye.style.typeset :as typeset]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-text]]
            [respo.comp.space :refer [comp-space]]
            [tiye.component.about :refer [comp-about]]
            [tiye.component.chatroom :refer [comp-chatroom]]
            [tiye.component.visiting-card :refer [comp-visiting-card]]
            [tiye.component.offline-tip :refer [comp-offline-tip]]
            [tiye.comp.reply :refer [comp-reply]]))

(defn render [store]
  (fn [state mutate!]
    (div
     {:style (merge typeset/global {:padding-bottom 240})}
     (div {:style ui/row} (comp-visiting-card))
     (if (empty? store) (comp-offline-tip) (comp-chatroom store))
     (comment
      comp-text
      "developing"
      {:line-height 2,
       :color (hsl 0 80 30),
       :background-color (hsl 60 80 50),
       :padding "0 8px",
       :display "inline-block",
       :border-radius "14px"})
     (comp-space nil "120px")
     (comp-about)
     (comp-reply store)
     (comment comp-debug (:state store) {:bottom 0, :left 0}))))

(def comp-container (create-comp :container render))
