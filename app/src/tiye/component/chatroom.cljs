
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

(defn on-nickname [e dispatch!]
  (let [event (:original-event e)]
    (if (= 13 (:key-code e))
      (do
        (.preventDefault event)
        (dispatch! :state/nickname (.-value (.-target event)))))))

(defn on-input [mutate!]
  (fn [e dispatch!]
    (let [content (:value e)]
      (mutate! content)
      (dispatch! :state/buffer content))))

(defn update-state [state text] text)

(defn init-state [] "")

(defn on-keydown [mutate!]
  (fn [e dispatch!]
    (if (= 13 (:key-code e))
      (do (mutate! "") (dispatch! :message/confirm nil)))))

(defn render [store]
  (fn [state mutate!]
    (div
      {:style (merge ui/column {:padding "16px"})}
      (div
        {:style typeset/description}
        (comp-text (get-in store [:statistics :user-count]) nil)
        (comp-text " 人在线: " nil)
        (comp-text
          (string/join ", " (get-in store [:statistics :nicknames]))
          nil))
      (comp-space nil "24px")
      (div
        {:style (merge {:padding-bottom "120px"})}
        (->>
          (:messages store)
          (map (fn [message] [(:id message) message]))
          (into {})
          (merge (:buffers store))
          (map last)
          (sort-by :time)
          (map (fn [message] [(:id message) (comp-message message)]))))
      (div
        {:style (merge layout/horizontal)}
        (let [nickname (get-in store [:state :nickname])]
          (if (and (some? nickname) (> (count nickname) 0))
            (input
              {:style
               (merge
                 widget/textbox
                 layout/flex
                 {:background-color (hsl 0 0 93)}),
               :event
               {:keydown (on-keydown mutate!),
                :input (on-input mutate!)},
               :attrs
               {:placeholder (str "Reply as " nickname),
                :value state}})
            (input
              {:style
               (merge
                 widget/textbox
                 {:background-color (hsl 0 0 93), :width "100%"}),
               :event {:keydown on-nickname},
               :attrs {:placeholder "Pick a name, and hit Enter"}})))
        (comp-space 8 nil)))))

(def comp-chatroom
 (create-comp :chatroom init-state update-state render))
