
(ns tiye-server.updater.core
  (:require [tiye-server.updater.state :as state]
            [tiye-server.updater.message :as message]))

(defn updater [db op op-data state-id op-id op-time]
  (case
    op
    :state/connect
    (state/connect db op-data state-id op-id op-time)
    :state/disconnect
    (state/disconnect db op-data state-id op-id op-time)
    :state/buffer
    (state/buffer db op-data state-id op-id op-time)
    :state/nickname
    (state/nickname db op-data state-id op-id op-time)
    :state/clear-name
    (state/nickname db op-data state-id op-id op-time)
    :message/confirm
    (message/confirm db op-data state-id op-id op-time)
    :message/clear
    (message/clear db op-data state-id op-id op-time)
    :message/remove
    (message/remove-one db op-data state-id op-id op-time)
    db))
