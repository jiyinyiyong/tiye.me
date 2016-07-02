
(ns tiye.component.container
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span]]
            [tiye.component.sidebar :refer [comp-sidebar]]
            [tiye.style.widget :as widget]
            [tiye.style.layout :as layout]))

(defn render [store]
  (fn [state mutate!]
    (div
      {:style (merge layout/fullscreen layout/horizontal-box)}
      (comp-sidebar))))

(def comp-container (create-comp :container render))
