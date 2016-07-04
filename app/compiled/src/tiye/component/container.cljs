
(ns tiye.component.container
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span]]
            [tiye.component.sidebar :refer [comp-sidebar]]
            [tiye.style.widget :as widget]
            [tiye.style.layout :as layout]
            [respo.component.debug :refer [comp-debug]]
            [tiye.component.about :refer [comp-about]]
            [tiye.component.chatroom :refer [comp-chatroom]]))

(defn render [store]
  (fn [state mutate!]
    (div
      {:style (merge layout/fullscreen layout/horizontal)}
      (comp-about)
      (div {:style widget/row-divider})
      (if (some? store) (comp-chatroom store) (comp-sidebar))
      (comp-debug (:state store) {:bottom 0, :left 0}))))

(def comp-container (create-comp :container render))
