
(ns tiye.core
  (:require [respo.core :refer [render!
                                clear-cache!
                                falsify-stage!
                                render-element]]
            [respo.util.format :refer [mute-element]]
            [tiye.component.container :refer [comp-container]]
            [cljs.reader :refer [read-string]]
            [cumulo-client.core :refer [send! setup-socket!]]
            [notifier.comp.notifications :refer [notify!]]))

(defn dispatch! [op op-data] (send! op op-data))

(defn on-close! [id])

(defonce store-ref (atom {}))

(defonce states-ref (atom {}))

(defn render-app! []
  (let [target (.querySelector js/document "#app")]
    (render! (comp-container @store-ref) target dispatch! states-ref)
    (if (some? @store-ref)
      (notify!
        (->>
          (:messages @store-ref)
          (map
            (fn [message] [(:id message)
                           {:icon "http://tiye.me/tiye-400x400.jpg",
                            :title (:nickname message),
                            :id message,
                            :body (:text message)}]))
          (into {}))
        on-close!))))

(defn on-jsload []
  (clear-cache!)
  (render-app!)
  (println "code updated."))

(defn listen-visibility [dispatch!]
  (.addEventListener
    js/window
    "visibilitychange"
    (fn [event]
      (dispatch! :state/visibility (.-visibilityState js/document)))))

(def ssr-stages
 (let [ssr-element (.querySelector js/document "#ssr-stages")
       ssr-markup (.getAttribute ssr-element "content")]
   (read-string ssr-markup)))

(defn -main []
  (enable-console-print!)
  (if (not (empty? ssr-stages))
    (falsify-stage!
      (.querySelector js/document "#app")
      (mute-element (render-element (comp-container {}) states-ref))
      dispatch!))
  (render-app!)
  (setup-socket!
    store-ref
    {:on-open!
     (fn [event]
       (dispatch! :state/referrer (aget js/document "referrer"))),
     :on-close! (fn [event] (reset! store-ref {})),
     :url (str "ws://" (.-hostname js/location) ":5020")})
  (add-watch store-ref :changes render-app!)
  (add-watch states-ref :changes render-app!)
  (listen-visibility dispatch!)
  (println "app started!")
  (let [configEl (.querySelector js/document "#config")
        config (read-string (.-innerHTML configEl))]
    (if (and (some? navigator.serviceWorker) (:build? config))
      (-> navigator.serviceWorker
       (.register "./sw.js")
       (.then
         (fn [registration]
           (println "resigtered:" registration.scope)))
       (.catch (fn [error] (println "failed:" error)))))))

(set! js/window.onload -main)
