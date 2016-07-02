
(ns tiye-server.schema)

(def database {:states {}, :tasks {}, :users {}})

(def state {:user-id nil, :id nil})

(def task {:done? false, :id nil, :text ""})
