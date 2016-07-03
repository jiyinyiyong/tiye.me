
(ns tiye.style.widget
  (:require [hsl.core :refer [hsl]]))

(def card {:padding "20px"})

(def title {:line-height 2, :font-size "16px", :font-weight "bold"})

(def resource
 {:line-height 2,
  :color "white",
  :background-color (hsl 200 80 80),
  :padding "0 8px",
  :text-decoration "none",
  :display "inline-block",
  :margin-right "8px",
  :border-radius "2px",
  :margin-bottom "8px"})

(def avatar
 {:width "80px",
  :flex-shrink 0,
  :background-image (str "url(tiye-400x400.jpg)"),
  :border-radius "50%",
  :background-size "cover",
  :height "80px"})

(def dim9 {:background-color (hsl 0 0 90)})

(def dim8 {:background-color (hsl 0 0 80)})

(def dim7 {:background-color (hsl 0 0 70)})

(def notice-large
 {:color (hsl 0 0 70), :font-size "28px", :font-weight "lighter"})

(def textbox
 {:line-height 2,
  :font-size "16px",
  :padding "0 8px",
  :outline "none",
  :border "none"})

(def button
 {:line-height 2,
  :color "white",
  :font-size "14px",
  :font-weight "normal",
  :background-color (hsl 200 60 80),
  :outline "none",
  :border "none"})

(def username
 {:line-height 2,
  :color (hsl 0 0 100),
  :font-size "12px",
  :background-color (hsl 30 80 70),
  :padding "0 4px",
  :display "inline-block",
  :border-radius "4px"})

(def message {:padding "4px 0"})
