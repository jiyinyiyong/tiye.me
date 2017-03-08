
(ns tiye.component.about
  (:require [respo.alias :refer [create-comp div span a img]]
            [tiye.style.layout :as layout]
            [tiye.style.devtool :as devtool]
            [tiye.style.typeset :as typeset]
            [tiye.component.text :refer [comp-text]]
            [tiye.style.widget :as widget]
            [tiye.information :as info]))

(defn render []
  (fn [state mutate!]
    (div
     {:style (merge layout/article)}
     (div
      {}
      (->> info/data
           (map-indexed
            (fn [index category]
              [index
               (div
                {}
                (div {:style typeset/heading} (comp-text (:category category) nil))
                (div
                 {:style (merge layout/row {:flex-wrap "wrap"})}
                 (->> (:data category)
                      (map-indexed
                       (fn [index address]
                         [index
                          (a
                           {:style (merge layout/row widget/showcase),
                            :attrs {:href (get address 1), :target "_blank"}}
                           (div {:style (widget/logo-small (get address 2))})
                           (comp-text (first address) widget/resource))])))))])))))))

(def comp-about (create-comp :about render))

(def about-tiye (str "题叶"))
