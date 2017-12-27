
(ns app.comp.search-engine
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.macros :refer [defcomp <> div button span input a]]
            [respo.comp.space :refer [=<]]))

(defn on-google [query]
  (fn [e d! m!]
    (.open js/window (str "https://www.google.com/search?q=题叶%7Cjiyinyiyong+" query))))

(defn on-segmentfault [query]
  (fn [e d! m!]
    (.open
     js/window
     (str "https://segmentfault.com/search?q=" query "&relatedObjectId=1200000000365842"))))

(defn on-twitter [query]
  (fn [e d! m!]
    (.open
     js/window
     (str "https://twitter.com/search?q=" query "%20from%3Ajiyinyiyong&src=typd"))))

(defn on-weibo [query]
  (fn [e d! m!]
    (.open js/window (str "http://weibo.com/1651843872/profile?is_search=1&key_word=" query))))

(def style-search {:color :white, :cursor :pointer, :text-decoration :underline})

(defcomp
 comp-search-engine
 (query)
 (div
  {}
  (<> span (str "Search " (pr-str query) ":") nil)
  (=< 8 nil)
  (span {:inner-text "Google", :style style-search, :on {:click (on-google query)}})
  (=< 8 nil)
  (span {:inner-text "Twitter", :style style-search, :on {:click (on-twitter query)}})
  (=< 8 nil)
  (span {:inner-text "微博", :style style-search, :on {:click (on-weibo query)}})
  (=< 8 nil)
  (span {:inner-text "sf.gg", :style style-search, :on {:click (on-segmentfault query)}})))
