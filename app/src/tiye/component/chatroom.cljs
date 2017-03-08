
(ns tiye.component.chatroom
  (:require [hsl.core :refer [hsl]]
            [clojure.string :as string]
            [respo.alias :refer [create-comp div input button]]
            [respo-ui.style :as ui]
            [tiye.component.text :refer [comp-text]]
            [tiye.component.message :refer [comp-message]]
            [tiye.style.layout :as layout]
            [tiye.style.widget :as widget]
            [tiye.style.typeset :as typeset]
            [tiye.style.devtool :as devtool]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.space :refer [comp-space]]
            [tiye.comp.member :refer [comp-member]]))

(def style-warning
  {:background-color (hsl 60 70 70),
   :color (hsl 0 90 40),
   :padding 8,
   :border-radius "8px",
   :font-size "14px"})

(defn on-rename [e dispatch!]
  (println "clear-name")
  (dispatch! :state/clear-name nil)
  (js/setTimeout
   (fn []
     (let [input-target (.querySelector js/document "input")]
       (.warn js/console "side effect: focusing to input box!")
       (.focus input-target)))
   100))

(defn render [store]
  (fn [state mutate!]
    (let [session (:state store), nickname (:nickname session)]
      (div
       {:style (merge ui/column {:padding "16px"})}
       (div
        {:style typeset/description}
        (comp-text (get-in store [:statistics :user-count]) nil)
        (comp-text " 人在线: " nil)
        (comp-member [(or nickname (:id session)) (aget js/document "referrer") true])
        (if (some? nickname)
          (div
           {:style (merge ui/button {:font-size "12px", :line-height "18px"}),
            :event {:click on-rename}}
           (comp-text "修改昵称" nil)))
        (div
         {}
         (->> (get-in store [:statistics :nicknames])
              (map-indexed (fn [idx member-data] [idx (comp-member member-data)]))))
        (comp-space "8px" nil))
       (comp-space nil "16px")
       (div {:style style-warning} (comp-text "警告: \b聊天中请勿相信任何一个人, 名字\b都是随便写的!!" nil))
       (comp-space nil "32px")
       (div
        {:style (merge {:padding-bottom "48px"})}
        (->> (:messages store)
             (map (fn [message] [(:id message) message]))
             (into {})
             (merge (:buffers store))
             (map last)
             (sort-by :time)
             (map (fn [message] [(:id message) (comp-message message)]))))))))

(def comp-chatroom (create-comp :chatroom render))
