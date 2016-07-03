
(ns tiye.component.about
  (:require [respo.alias :refer [create-comp div span a]]
            [tiye.style.layout :as layout]
            [tiye.style.devtool :as devtool]
            [tiye.style.typeset :as typeset]
            [tiye.component.text :refer [comp-text]]
            [tiye.style.widget :as widget]
            [tiye.component.visiting-card :refer [comp-visiting-card]]))

(def about-tiye (str "题叶"))

(def informations
 [{:category "Projects",
   :data
   [["Cirru" "http://cirru.org"]
    ["Respo" "http://cirru.org"]
    ["Cumulo" "http://cirru.org"]
    ["Quamolit" "http://cirru.org"]
    ["Memkits" ""]
    ["Quamolit" ""]
    ["柳线" ""]]}
  {:category "Wrtings",
   :data
   [["SegmentFault" "http://cirru.org"]
    ["豆瓣" "http://cirru.org"]
    ["HashNode" "http://cirru.org"]]}
  {:category "Activities",
   :data
   [["微博" "http://cirru.org"]
    ["Twitter" "http://cirru.org"]
    ["GitHub" "http://cirru.org"]
    ["React China" "http://cirru.org"]
    ["Clojure China" "http://cirru.org"]]}
  {:category "Skills",
   :data
   [["React" ""]
    ["Clojure" "http://cirru.org"]
    ["CoffeeScript" "http://cirru.org"]
    ["Haskell Beginner" "http://cirru.org"]]}
  {:category "Records",
   :data
   [["饿了么 2016" ""]
    ["teambition 2014" "http://cirru.org"]
    ["Appest 2013" "http://cirru.org"]
    ["精弘网络" "http://cirru.org"]]}])

(defn render []
  (fn [state mutate!]
    (div
      {:style (merge layout/article {:width "40%"})}
      (comp-visiting-card)
      (div
        {}
        (->>
          informations
          (map-indexed
            (fn [index category] [index
                                  (div
                                    {}
                                    (div
                                      {:style typeset/heading}
                                      (comp-text
                                        (:category category)
                                        nil))
                                    (div
                                      {}
                                      (->>
                                        (:data category)
                                        (map-indexed
                                          (fn 
                                            [index address]
                                            [index
                                             (a
                                               {:style widget/resource,
                                                :attrs
                                                {:href
                                                 (get address 1)}}
                                               (comp-text
                                                 (first address)
                                                 nil))])))))])))))))

(def comp-about (create-comp :about render))
