
(ns tiye.comp.member
  (:require [hsl.core :refer [hsl]]
            [clojure.string :as string]
            [respo.alias :refer [create-comp div input button]]
            [respo-ui.style :as ui]
            [tiye.style.layout :as layout]
            [tiye.style.widget :as widget]
            [tiye.style.typeset :as typeset]
            [tiye.style.devtool :as devtool]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.text :refer [comp-text]]))

(def style-member {:display "inline-block", :padding "0 8px", :color (hsl 0 0 80)})

(defn render [member-data]
  (fn [state mutate!]
    (let [[nickname referrer visible?] member-data
          short-referrer (subs
                          (if (string? referrer)
                            (string/replace referrer (re-pattern "https?://") "")
                            "")
                          0
                          20)]
      (div
       {:style (merge style-member (if visible? {:color (hsl 0 0 0)}))}
       (comp-text (str nickname "(" short-referrer "...)") nil)))))

(def comp-member (create-comp :member render))
