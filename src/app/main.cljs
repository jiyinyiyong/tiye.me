
(ns app.main
  (:require [respo.core :refer [render! clear-cache! realize-ssr!]]
            [respo.cursor :refer [mutate]]
            [app.comp.container :refer [comp-container]]
            [cljs.reader :refer [read-string]]
            [app.updater.core :refer [updater]]
            [app.schema :as schema]))

(defonce *store (atom schema/store))

(defn dispatch! [op op-data]
  (let [next-store (if (= op :states)
                     (update @*store :states (mutate op-data))
                     (updater @*store op op-data))]
    (reset! *store next-store)))

(def mount-target (.querySelector js/document ".app"))

(defn render-app! [renderer mock-ssr?]
  (renderer mount-target (comp-container @*store mock-ssr?) dispatch!))

(def ssr? (some? (js/document.querySelector "meta.respo-ssr")))

(defn main! []
  (if ssr? (render-app! realize-ssr! true))
  (render-app! render! false)
  (add-watch *store :changes (fn [] (render-app! render! false)))
  (println "App started."))

(defn reload! [] (clear-cache!) (render-app! render! false) (println "Code updated."))

(set! (.-onload js/window) main!)
