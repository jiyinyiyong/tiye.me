
(ns app.schema )

(def store {:states {}, :query ""})

(def information
  [{:title "ClojureScript 爱好者", :content "从 2015 年底开始长期研究 ClojureScript 生态, 以及改进单页面应用"}
   {:title "React 深度用户", :content "从 2014 年开始关注 React 社区, 熟悉今年的发展"}
   {:title "居住在上海", :content "2014 起在上海工作"}
   {:title "浙江人, 在金华和杭州念书", :content "最熟悉的城市是杭州, 经常回杭州游玩和见朋友"}
   {:title "曾经在 Teambition 工作",
    :content "我在 2014 年初加入 Teambition, 2016 年初离开, 大部分时间在简聊团队开发 React 应用"}])

(def tags #{"Clojure" "React" "上海" "杭州" "Teambition" "饿了么" "Cirru"})
