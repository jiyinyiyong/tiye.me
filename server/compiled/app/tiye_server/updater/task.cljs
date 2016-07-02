
(ns tiye-server.updater.task
  (:require [tiye-server.schema :as schema]))

(defn add [db op-data state-id op-id op-time]
  (assoc-in
    db
    [:tasks op-id]
    (merge schema/task {:id op-id, :text op-data})))

(defn rm [db op-data state-id op-id op-time]
  (update db :tasks (fn [tasks] (dissoc tasks op-data))))
