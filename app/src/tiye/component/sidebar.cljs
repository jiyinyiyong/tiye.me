
(ns tiye.component.sidebar
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span]]
            [tiye.style.widget :as widget]
            [tiye.style.layout :as layout]
            [tiye.component.offline-tip :refer [comp-offline-tip]]))

(defn render []
  (fn [state mutate!]
    (div {:style (merge layout/sidebar)} (comp-offline-tip))))

(def comp-sidebar (create-comp :sidebar render))
