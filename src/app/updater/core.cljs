
(ns app.updater.core )

(defn updater [store op op-data]
  (case op
    :buffer (assoc store :buffer op-data)
    :query (-> store (assoc :buffer op-data) (assoc :query op-data))
    :commit (assoc store :query (:buffer store))
    store))
