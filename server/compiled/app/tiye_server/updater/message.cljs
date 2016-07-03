
(ns tiye-server.updater.message
  (:require [tiye-server.schema :as schema]))

(defn confirm [db op-data state-id op-id op-time]
  (let [state (get-in db [:states state-id])
        buffer (:buffer state)
        buffer-time (:buffer-time state)
        nickname (:nickname state)]
    (-> db
     (update-in
       [:states state-id]
       (fn [state]
         (if (some? (:buffer state))
           (-> state (assoc :buffer nil) (assoc :buffer-time nil)))))
     (update
       :messages
       (fn [messages]
         (if (some? buffer)
           (assoc
             messages
             op-id
             (assoc
               schema/message
               :id
               op-id
               :time
               buffer-time
               :text
               buffer
               :nickname
               nickname))
           messages))))))

(defn clear [db op-data state-id op-id op-time] (assoc db :messages {}))
