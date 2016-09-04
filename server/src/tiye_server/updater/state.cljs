
(ns tiye-server.updater.state
  (:require [tiye-server.schema :as schema]))

(defn nickname [db op-data state-id op-id op-time]
  (-> db
   (update-in
     [:states state-id]
     (fn [state] (assoc state :nickname op-data)))))

(defn disconnect [db op-data state-id op-id op-time]
  (update db :states (fn [state] (dissoc state state-id))))

(defn clear-name [db op-data state-id op-id op-time]
  (update-in
    db
    [:states state-id]
    (fn [state] (println state) (dissoc state :nickname))))

(defn buffer [db op-data state-id op-id op-time]
  (-> db
   (update-in
     [:states state-id]
     (fn [state]
       (if (nil? (:buffer state))
         (assoc state :buffer op-data :buffer-time op-time)
         (assoc state :buffer op-data))))))

(defn connect [db op-data state-id op-id op-time]
  (assoc-in db [:states state-id] (merge schema/state {:id state-id})))
