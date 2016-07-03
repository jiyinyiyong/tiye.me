
(ns tiye-server.view)

(defn render-scene [db] db)

(defn render-view [state-id db]
  {:states (get-in db [:states state-id])})
