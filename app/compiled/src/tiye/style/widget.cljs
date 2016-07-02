
(ns tiye.style.widget
  (:require [hsl.core :refer [hsl]]))

(def card {:box-shadow (str "0 0 1px " (hsl 0 0 0))})

(def title {})

(def description {})

(def avatar
 {:width "80px",
  :background-image (str "url(tiye-400x400.jpg)"),
  :background-size "cover",
  :height "80px"})
