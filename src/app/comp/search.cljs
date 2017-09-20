
(ns app.comp.search
  (:require-macros [respo.macros :refer [defcomp <> div input button span]])
  (:require [clojure.string :as string]
            [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.core :refer [create-comp]]
            [respo.comp.space :refer [=<]]
            [app.schema :refer [information]]
            [app.comp.item :refer [comp-item]]
            [app.comp.search-engine :refer [comp-search-engine]]))

(def style-searcher {:flex-shrink 0, :width "60vw"})

(def style-mock {:height 32, :text-align :center, :color :white, :display :inline-block})

(defn on-search [e d! m!] (d! :buffer (:value e)))

(def style-input
  {:background-color :transparent,
   :border (str "1px solid " (hsl 0 0 100)),
   :border-width "0 0 1px 0",
   :color :white,
   :max-width "80vw",
   :width 320,
   :text-align :center})

(def style-empty {:color :white})

(defn on-keydown [buffer]
  (fn [e d! m!]
    (if (= 13 (:key-code e))
      (do
       (d! :commit nil)
       (if (fn? js/window.ga) (js/window.ga "send" "event" "interest" "search" buffer 1))))))

(def style-results {})

(defcomp
 comp-search
 (buffer query mock-ssr?)
 (div
  {:style (merge ui/column-center style-searcher)}
  (div
   {}
   (if mock-ssr?
     (div {:style style-mock} (<> span "Loading..." nil))
     (input
      {:style (merge ui/input style-input),
       :value buffer,
       :placeholder "Press Enter to search...",
       :on {:input on-search, :keydown (on-keydown buffer)}})))
  (=< nil 16)
  (if (>= (count query) 2)
    (let [results (->> information
                       (filter
                        (fn [item]
                          (string/includes?
                           (string/lower-case (:title item))
                           (string/lower-case query)))))]
      (if (empty? results)
        (div {:style style-empty} (<> span (str "找不到" (pr-str query) ".") nil))
        (div
         {:style style-results}
         (->> results (map-indexed (fn [idx item] [idx (comp-item item)])))))))
  (=< nil 16)
  (if (>= (count query) 2) (comp-search-engine query))))
