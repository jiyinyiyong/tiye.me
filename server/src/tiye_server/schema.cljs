
(ns tiye-server.schema )

(def database {:states {}, :users {}, :messages []})

(def state
  {:user-id nil,
   :id nil,
   :buffer nil,
   :buffer-time nil,
   :nickname nil,
   :referrer nil,
   :visibility true})

(def message {:id nil, :text "", :nickname "", :time nil, :writing? false})
