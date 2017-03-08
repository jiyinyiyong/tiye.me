
(ns tiye.style.widget (:require [hsl.core :refer [hsl]] [tiye.style.layout :as layout]))

(def message
  {:padding "4px 0", :align-items "flex-start", :margin-top 8, :position "relative"})

(def dim8 {:background-color (hsl 0 0 80)})

(def notice-large
  {:font-size "24px",
   :font-weight "lighter",
   :color (hsl 0 0 70),
   :background-color (hsl 0 0 93)})

(def resource {:padding "0 8px", :line-height 2, :color (hsl 200 20 50), :font-size "14px"})

(def row-divider {:width "2px", :background-color (hsl 0 0 94)})

(def dim7 {:background-color (hsl 0 0 70)})

(def username {:display "inline-block", :min-width "40px"})

(defn logo-small [img]
  {:width "24px",
   :height "24px",
   :background-image (str "url(" img ")"),
   :background-size "contain",
   :background-position "center",
   :background-repeat "no-repeat"})

(def avatar
  {:width "64px",
   :height "64px",
   :background-image (str "url(tiye-400x400.jpg)"),
   :background-size "cover",
   :border-radius "50%",
   :flex-shrink 0})

(def showcase
  (merge
   layout/row
   {:align-items "center",
    :border (str "1px solid " (hsl 0 0 90)),
    :padding "0 8px",
    :margin-right "8px",
    :margin-bottom "8px",
    :min-width "120px",
    :height "40px",
    :border-radius "4px",
    :text-decoration "none"}))

(def textbox
  {:border "none", :font-size "16px", :line-height 2, :padding "0 8px", :outline "none"})

(def card {:padding "20px"})

(def dim9 {:background-color (hsl 0 0 90)})

(def number-highlight
  {:background-color (hsl 40 80 60),
   :color (hsl 0 0 100),
   :padding "0 8px",
   :border-radius "12px",
   :font-size "12px",
   :line-height 2,
   :display "inline-block"})

(def button
  {:font-size "14px",
   :line-height 2,
   :font-weight "normal",
   :background-color (hsl 200 60 80),
   :border "none",
   :outline "none",
   :color "white",
   :border-radius "8px",
   :padding "0 8px"})
