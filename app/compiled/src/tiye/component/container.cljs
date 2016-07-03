
(ns tiye.component.container
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span]]
            [tiye.component.sidebar :refer [comp-sidebar]]
            [tiye.style.widget :as widget]
            [tiye.style.layout :as layout]
            [respo.component.debug :refer [comp-debug]]
            [tiye.component.about :refer [comp-about]]))

(defn render [store]
  (fn [state mutate!]
    (div
      {:style (merge layout/fullscreen layout/horizontal)}
      (comp-about)
      (comp-sidebar)
      (comp-debug store {:bottom 0, :right 0}))))

(def comp-container (create-comp :container render))
