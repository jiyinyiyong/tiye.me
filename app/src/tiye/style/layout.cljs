
(ns tiye.style.layout (:require [hsl.core :refer [hsl]]))

(def article {:padding "16px", :overflow-y "auto"})

(def sidebar {:flex 1, :min-width "260px", :background-color (hsl 0 0 96)})

(def vertical
  {:display "flex",
   :flex-direction "column",
   :align-items "stretch",
   :justify-content "space-between"})

(def horizontal-box
  {:display "flex", :flex-direction "row", :align-items "center", :justify-content "center"})

(def vertical-box
  {:display "flex",
   :flex-direction "column",
   :align-items "center",
   :justify-content "center"})

(def column
  {:display "flex",
   :flex-direction "column",
   :align-items "stretch",
   :justify-content "flex-start"})

(def row
  {:display "flex",
   :flex-direction "row",
   :align-items "stretch",
   :justify-content "flex-start"})

(def horizontal
  {:display "flex",
   :flex-direction "row",
   :align-items "stretch",
   :justify-content "space-between"})

(def fullscreen {:position "absolute", :width "100%", :height "100%"})

(def flex {:flex 1, :flex-shrink 0})
