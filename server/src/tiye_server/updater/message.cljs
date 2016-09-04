
(ns tiye-server.updater.message
  (:require [tiye-server.schema :as schema]))

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
           (let [fresh-messages (if
                                  (> (count messages) 40)
                                  (subvec messages 40)
                                  messages)]
             (conj
               fresh-messages
               (merge
                 schema/message
                 {:time buffer-time,
                  :nickname nickname,
                  :id op-id,
                  :text buffer})))
           messages))))))

(defn clear [db op-data state-id op-id op-time] (assoc db :messages []))
