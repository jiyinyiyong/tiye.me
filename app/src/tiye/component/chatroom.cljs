
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
            [respo.comp.space :refer [comp-space]]))

(def style-warning
 {:color (hsl 0 90 40),
  :font-size "14px",
  :background-color (hsl 60 70 70),
  :padding 8,
  :border-radius "8px"})

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
    (let [session (:state store) nickname (:nickname session)]
      (div
        {:style (merge ui/column {:padding "16px"})}
        (div
          {:style typeset/description}
          (comp-text (get-in store [:statistics :user-count]) nil)
          (comp-text " 人在线: " nil)
          (comp-text
            (string/join ", " (get-in store [:statistics :nicknames]))
            nil)
          (comp-space "8px" nil)
          (if (some? nickname)
            (div
              {:style ui/button, :event {:click on-rename}}
              (comp-text "重新写昵称" nil))))
        (comp-space nil "16px")
        (div
          {:style style-warning}
          (comp-text "警告: \b聊天中请勿相信任何一个人, 名字\b都是随便写的!!" nil))
        (comp-space nil "32px")
        (div
          {:style (merge {:padding-bottom "48px"})}
          (->>
            (:messages store)
            (map (fn [message] [(:id message) message]))
            (into {})
            (merge (:buffers store))
            (map last)
            (sort-by :time)
            (map
              (fn [message] [(:id message)
                             (comp-message message)]))))))))

(def comp-chatroom (create-comp :chatroom render))
