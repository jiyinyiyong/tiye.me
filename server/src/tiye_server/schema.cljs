
(ns tiye-server.schema)

(def message
 {:writing? false, :time nil, :nickname "", :id nil, :text ""})

(def database {:states {}, :messages [], :users {}})

(def state
 {:nickname nil,
  :user-id nil,
  :buffer-time nil,
  :referrer nil,
  :id nil,
  :visibility true,
  :buffer nil})
