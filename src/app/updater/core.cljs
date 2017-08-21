
(ns app.updater.core )

(defn updater [store op op-data] (case op :query (assoc store :query op-data) store))
