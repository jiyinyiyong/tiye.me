
(ns app.comp.search
  (:require-macros [respo.macros :refer [defcomp <> div input button span]])
  (:require [clojure.string :as string]
            [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.core :refer [create-comp]]
            [respo.comp.space :refer [=<]]
            [app.schema :refer [information]]
            [app.comp.item :refer [comp-item]]))

(def style-searcher {:flex-shrink 0})

(defn on-google [query]
  (fn [e d! m!]
    (.open js/window (str "https://www.google.com/search?q=题叶%7Cjiyinyiyong+" query))))

(def style-mock {:height 32, :text-align :center, :color :white})

(defn on-search [e d! m!] (d! :buffer (:value e)))

(def style-search {:color :white, :cursor :pointer, :text-decoration :underline})

(def style-input
  {:background-color :transparent,
   :border (str "1px solid " (hsl 0 0 100)),
   :color :white,
   :max-width "80vw",
   :width 600})

(def style-empty {:color :white})

(defn on-keydown [buffer]
  (fn [e d! m!]
    (if (= 13 (:key-code e))
      (do
       (d! :commit nil)
       (if (fn? js/window.ga) (js/window.ga "send" "event" "interest" "search" buffer 1))))))

(defcomp
 comp-search
 (buffer query mock-ssr?)
 (div
  {:style style-searcher}
  (div
   {}
   (if mock-ssr?
     (div {:style style-mock} (<> span "Loading..." nil))
     (input
      {:style (merge ui/input style-input),
       :value buffer,
       :placeholder "Hit Enter to search...",
       :on {:input on-search, :keydown (on-keydown buffer)}})))
  (=< nil 16)
  (if (> (count query) 1)
    (let [results (->> information
                       (filter
                        (fn [item]
                          (string/includes?
                           (string/lower-case (:title item))
                           (string/lower-case query)))))]
      (if (empty? results)
        (div {:style style-empty} (<> span (str "No results for " (pr-str query)) nil))
        (div {} (->> results (map-indexed (fn [idx item] [idx (comp-item item)])))))))
  (=< nil 32)
  (div
   {}
   (span {:inner-text "Search Google", :style style-search, :on {:click (on-google query)}}))))
