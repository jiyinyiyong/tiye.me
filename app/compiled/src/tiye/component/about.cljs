
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
    ["Respo" "https://github.com/mvc-works/respo/wiki/Quick-Start"]
    ["Cumulo" "http://cumulo.org"]
    ["Quamolit" "https://github.com/Quamolit/quamolit"]
    ["Memkits" "https://github.com/Memkits/"]
    ["柳线" "https://site.douban.com/231595/"]]}
  {:category "Writings",
   :data
   [["SegmentFault" "https://segmentfault.com/blog/jiyinyiyong"]
    ["豆瓣" "https://www.douban.com/people/jiyinyiyong/notes"]
    ["HashNode" "https://hashnode.com/@jiyinyiyong/stories"]]}
  {:category "Activities",
   :data
   [["微博" "https://weibo.com/jiyinyiyong/"]
    ["Twitter" "https://twitter.com/jiyinyiyong"]
    ["GitHub" "https://github.com/jiyinyiyong"]
    ["React China" "http://react-china.org/users/jiyinyiyong/activity"]
    ["Clojure China"
     "http://clojure-china.org/users/jiyinyiyong/activity"]]}
  {:category "Skills",
   :data
   [["React" "https://facebook.github.io/react/"]
    ["Clojure" "http://clojure.org/"]
    ["CoffeeScript" "http://coffeescript.org/"]
    ["Haskell Beginner" "https://www.haskell.org/"]]}
  {:category "Records",
   :data
   [["饿了么 2016" "http://ele.me/"]
    ["teambition 2014" "https://teambition.com/"]
    ["Appest 2013" "http://ticktick.com/"]
    ["精弘网络" "http://www.zjut.com/"]]}])

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
