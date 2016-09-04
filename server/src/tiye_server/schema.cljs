
(ns tiye-server.schema)

(def message
 {:writing? false, :time nil, :nickname "", :id nil, :text ""})

(def database {:states {}, :messages [], :users {}})

(def state
 {:nickname nil, :user-id nil, :buffer-time nil, :id nil, :buffer nil})
