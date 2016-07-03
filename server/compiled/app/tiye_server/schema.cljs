
(ns tiye-server.schema)

(def database {:states {}, :messages {}, :users {}})

(def state {:user-id nil, :buffer-time nil, :id nil, :buffer nil})

(def message {:time nil, :nickname "", :id nil, :text ""})
