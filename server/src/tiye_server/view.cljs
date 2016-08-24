
(ns tiye-server.view
  (:require [tiye-server.schema :as schema]))

(defn render-view [state-id db]
  {:state (get-in db [:states state-id]),
   :statistics {:user-count (count (:states db))},
   :messages (:messages db),
   :buffers
   (->>
     (:states db)
     (filter (fn [entry] (some? (:buffer (last entry)))))
     (map
       (fn [entry]
         (let [state (last entry)]
           [(:id state)
            (merge
              schema/message
              {:writing? true,
               :time (:buffer-time state),
               :nickname
               (let [nickname (:nickname state)]
                 (if (and (some? nickname) (pos? (count nickname)))
                   nickname
                   (:id state))),
               :id (:id state),
               :text (:buffer state)})])))
     (into {}))})

(defn render-scene [db] db)