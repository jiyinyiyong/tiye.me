
(ns tiye.component.container
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span input]]
            [respo-ui.style :as ui]
            [tiye.style.widget :as widget]
            [tiye.style.layout :as layout]
            [tiye.style.typeset :as typeset]
            [respo.comp.debug :refer [comp-debug]]
            [tiye.component.about :refer [comp-about]]
            [tiye.component.chatroom :refer [comp-chatroom]]
            [tiye.component.visiting-card :refer [comp-visiting-card]]
            [tiye.component.offline-tip :refer [comp-offline-tip]]))

(defn render [store]
  (fn [state mutate!]
    (div
      {:style (merge typeset/global)}
      (div {:style ui/row} (comp-visiting-card))
      (if (empty? store) (comp-offline-tip) (comp-chatroom store))
      (comp-about)
      (comment comp-debug (:state store) {:bottom 0, :left 0}))))

(def comp-container (create-comp :container render))
