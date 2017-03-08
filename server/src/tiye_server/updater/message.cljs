
(ns tiye-server.updater.message (:require [tiye-server.schema :as schema]))

(defn confirm [db op-data state-id op-id op-time]
  (let [state (get-in db [:states state-id])
        buffer (:buffer state)
        buffer-time (:buffer-time state)
        nickname (or (:nickname state) (:id state))]
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
             (let [fresh-messages (if (> (count messages) 20) (subvec messages 10) messages)]
               (conj
                fresh-messages
                (merge
                 schema/message
                 {:id op-id, :time buffer-time, :text buffer, :nickname nickname})))
             messages))))))

(defn clear [db op-data state-id op-id op-time] (assoc db :messages []))

(defn remove-one [db op-data state-id op-id op-time]
  (update
   db
   :messages
   (fn [messages] (filterv (fn [message] (not= op-data (:id message))) messages))))
