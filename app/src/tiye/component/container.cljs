
(ns tiye.component.container
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span]]
            [respo-ui.style :as ui]
            [tiye.component.sidebar :refer [comp-sidebar]]
            [tiye.style.widget :as widget]
            [tiye.style.layout :as layout]
            [tiye.style.typeset :as typeset]
            [respo.comp.debug :refer [comp-debug]]
            [tiye.component.about :refer [comp-about]]
            [tiye.component.chatroom :refer [comp-chatroom]]
            [tiye.component.title :refer [comp-title]]))

(defn render [store]
  (fn [state mutate!]
    (div
      {:style (merge typeset/global)}
      (if (empty? store) (comp-sidebar) (comp-chatroom store))
      (comp-about)
      (comment comp-debug (:state store) {:bottom 0, :left 0})
      (comp-title
        (str "(" (get-in store [:statistics :user-count]) ") 在线")))))

(def comp-container (create-comp :container render))
