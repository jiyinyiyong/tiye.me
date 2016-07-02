
(ns tiye.component.sidebar
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span]]
            [tiye.component.visiting-card :refer [comp-visiting-card]]))

(defn render [] (fn [state mutate!] (div {} (comp-visiting-card))))

(def comp-sidebar (create-comp :sidebar render))
