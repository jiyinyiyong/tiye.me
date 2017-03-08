
(ns tiye.comp.reply
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

(defn on-keydown [mutate!]
  (fn [e dispatch!]
    (let [event (:original-event e)]
      (if (= 13 (:key-code e))
        (do (.preventDefault event) (mutate! "") (dispatch! :message/confirm nil))))))

(defn init-state [& args] "")

(defn on-input [mutate!]
  (fn [e dispatch!]
    (let [content (:value e)
          short-content (if (> (count content) 400) (subs content 0 400) content)]
      (mutate! short-content)
      (dispatch! :state/buffer short-content))))

(defn on-nickname [e dispatch!]
  (let [event (:original-event e)]
    (if (= 13 (:key-code e))
      (do
       (.preventDefault event)
       (let [nickname (.-value (.-target event))
             short-name (if (> (count nickname) 20) (subs nickname 0 20) nickname)]
         (dispatch! :state/nickname short-name))))))

(defn render [store]
  (fn [state mutate!]
    (div
     {:style (merge
              layout/horizontal
              {:position "fixed",
               :bottom 16,
               :left 8,
               :padding "8px 8px",
               :background-color (hsl 0 0 100),
               :box-shadow (str "0 0 10px " (hsl 0 0 0 0.4)),
               :right 8})}
     (let [nickname (get-in store [:state :nickname])]
       (if (and (some? nickname) (> (count nickname) 0))
         (input
          {:style (merge
                   widget/textbox
                   layout/flex
                   {:background-color (hsl 0 0 100), :padding "0"}),
           :attrs {:value state, :placeholder (str "Reply as " nickname)},
           :event {:input (on-input mutate!), :keydown (on-keydown mutate!)}})
         (input
          {:style (merge
                   widget/textbox
                   {:background-color (hsl 0 0 100), :width "100%", :padding "0"}),
           :attrs {:placeholder "Pick a name, and hit Enter"},
           :event {:keydown on-nickname}})))
     (comment comp-debug store nil))))

(defn update-state [state text] text)

(def comp-reply (create-comp :reply init-state update-state render))
