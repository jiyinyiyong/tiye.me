
(ns app.comp.search
  (:require-macros [respo.macros :refer [defcomp <> div input button span]])
  (:require [clojure.string :as string]
            [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.core :refer [create-comp]]
            [respo.comp.space :refer [=<]]
            [app.schema :refer [information]]))

(defn on-search [e d! m!] (d! :query (:value e)))

(def style-input
  {:background-color :transparent,
   :border (str "1px solid " (hsl 0 0 100)),
   :color :white,
   :width 400})

(def style-button
  {:background-color :transparent,
   :border (str "1px solid " (hsl 0 0 100)),
   :border-radius "0px",
   :color :white,
   :height 32,
   :line-height "30px"})

(def style-item {:color :white})

(defcomp
 comp-search
 (query)
 (div
  {}
  (div
   {}
   (input
    {:style (merge ui/input style-input),
     :value query,
     :placeholder "Keyword",
     :on {:input on-search}})
   (=< 8 nil)
   (button {:style (merge ui/button style-button), :inner-text "Search"}))
  (let [results information]
    (div
     {}
     (->> information
          (filter
           (fn [item]
             (string/includes? (string/lower-case (:title item)) (string/lower-case query))))
          (map-indexed
           (fn [idx item] [idx (div {:style style-item} (<> span (:title item) nil))])))))))
