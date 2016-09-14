
(ns tiye-server.view
  (:require [tiye-server.schema :as schema]
            [clojure.string :as string]))

(defn render-view [state-id db]
  {:state (get-in db [:states state-id]),
   :statistics
   {:user-count (count (:states db)),
    :nicknames
    (->>
      (:states db)
      (filter (fn [entry] (not= state-id (:id (last entry)))))
      (map
        (fn [entry]
          (let [state (last entry) nickname (:nickname state)]
            [(if (and (some? nickname) (not (string/blank? nickname)))
               nickname
               (:id state))
             (:referrer state)
             (= (:visibility state) "visible")])))
      (vec))},
   :messages (:messages db),
   :buffers
   (->>
     (:states db)
     (filter
       (fn [entry]
         (let [buffer (:buffer (last entry))]
           (and (some? buffer) (not (string/blank? buffer))))))
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
