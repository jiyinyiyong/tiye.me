
(ns app.updater.core )

(defn updater [store op op-data] (case op :select (assoc store :selected op-data) store))
