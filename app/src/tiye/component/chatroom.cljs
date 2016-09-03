
(ns tiye.component.chatroom
  (:require [hsl.core :refer [hsl]]
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

(defn on-nickname [e dispatch!] (dispatch! :state/nickname (:value e)))

(defn on-input [mutate!]
  (fn [e dispatch!]
    (let [content (:value e)]
      (mutate! content)
      (dispatch! :state/buffer content))))

(defn update-state [state text] text)

(defn on-clear [e dispatch!] (dispatch! :message/clear nil))

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
        (comp-text "Currently there are " nil)
        (comp-text
          (get-in store [:statistics :user-count])
          widget/number-highlight)
        (comp-text " users in the chatroom." nil))
      (div
        {:style (merge {:padding-bottom "120px"})}
        (->>
          (merge (:messages store) (:buffers store))
          (map last)
          (sort-by :time)
          (map (fn [message] [(:id message) (comp-message message)]))))
      (div
        {:style (merge layout/horizontal)}
        (input
          {:style
           (merge
             widget/textbox
             {:background-color (hsl 0 0 93), :width "120px"}),
           :event {:input on-nickname},
           :attrs
           {:placeholder
            (let [nickname (get-in store [:state :nickname])]
              (if (and (some? nickname) (> (count nickname) 0))
                nickname
                (get-in store [:state :id])))}})
        (comp-space 8 nil)
        (input
          {:style
           (merge
             widget/textbox
             layout/flex
             {:background-color (hsl 0 0 93)}),
           :event
           {:keydown (on-keydown mutate!), :input (on-input mutate!)},
           :attrs {:placeholder "Message...", :value state}})
        (comp-space 8 nil)
        (button
          {:style widget/button,
           :event {:click on-clear},
           :attrs {:inner-text "Clear"}})))))

(def comp-chatroom
 (create-comp :chatroom init-state update-state render))
