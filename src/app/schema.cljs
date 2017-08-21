
(ns app.schema )

(def store {:states {}, :buffer "", :query ""})

(def information
  [{:title "ClojureScript 爱好者",
    :content "从 2015 年底开始长期研究 ClojureScript 生态, 以及改进单页面应用",
    :links [{:text "Clojure 中文导航", :url "http://map.clj.im/"}]}
   {:title "Cirru 是什么意思?",
    :content "Cirru 是我的一个项目, 我认为用语法树进行编程才是正确的, 并且在这个方向是做了大量的探索, 最终发明了 Cumulo Editor 这个协同语法树开发工具.",
    :links [{:text "Cirru 首页", :url "http://cirru.org"}
            {:text "GitHub/Cirru", :url "https://github.com/Cirru"}]}
   {:title "React 深度用户",
    :content "从 2014 年开始关注 React 社区, 熟悉近年的发展. 我还参与了 React 中文社区线上的建设.",
    :links [{:text "React 中文导航", :url "http://nav.react-china.org"}]}
   {:title "居住在上海", :content "2014 起在上海工作. 我呆过张江跟普陀, 这些年逛过的地方应该也不少."}
   {:title "浙江人, 在金华和杭州念书", :content "很熟悉杭州, 经常回杭州游玩和见朋友."}
   {:title "去过深圳吗?", :content "去过几次, 群里有几个朋友在深圳, 我还去深圳湾看过日出呢, 海边真是漂亮!"}
   {:title "去过厦门吗?", :content "去得不是时候, 也没进鼓浪屿和厦大, 反而晒伤了, 不开心"}
   {:title "曾经在 Teambition 工作",
    :content "我在 2014 年初加入 Teambition, 2016 年初离开, 大部分时间在简聊团队开发 React 应用"}
   {:title "微信账号", :content "找我商量技术和项目可以直接加我微信账号 jiyinyiyong, 注明来自 tiye.me"}
   {:title "函数式编程(FP)",
    :content "我认为函数式编程是未来几年编程领域一个重要的变化, 特别是 Haskell 当中越来越多特性会在主流编程语言社区当中被吸收",
    :links [{:text "FP China", :url "http://fp-china.org"}]}
   {:title "微博",
    :content "我的微博账号是\"题叶\", 会经常从国外社区贴一些技术新闻过来, 也欢迎关注我的 Twitter 账号 @jiyinyiyong",
    :links [{:text "@题叶", :url "https://weibo.com/jiyinyiyong/"}]}
   {:title "摄影和拍照", :content "日常用小米手机拍拍拍, 对美景略有兴趣, 有好的照片欢迎扔给我瞧瞧!"}
   {:title "Vue 这个框架如何?",
    :content "我觉得 Vue 对于创业者来说是不错的选择, 或者需要快速完成页面的时候. 但是某种程度上 Vue 回避了前端社区对于函数式编程的大量研究, 而我是笃信函数式编程的, 我觉得大家不应该把学会 Vue 当做是学完了前端."}
   {:title "\"题叶\"这个名字是什么意思?", :content "从张三影的词里来的, 原典是在唐传奇里. 自己找比较有意思, 别追问我啦."}
   {:title "\"jiyinyiyong\"是什么, 怎么念啊?",
    :content "这是我的小名在天台话里的发音, 是两个字, 但不会念的话就念成 John 吧..."}
   {:title "你单身吗?", :content "刷一下我的微信朋友圈就知道了"}
   {:title "喜欢什么样的女孩子?",
    :content "无法描述... 参考刘涛版新白蛇传里的刘涛, 参考黄教主演的上古情歌里的青云, 参考刀剑神域里的 Asuna, 参考四月是你的谎言里的熏... 我只是打个比方啊, 毕竟都是虚构的人物."}
   {:title "有 Twitter 吗?",
    :content "有啊, 为了能更好地和外国人交流, 我已经刷了很久的 Twitter 了, 总算混熟了几个在社区的有名的人物, 帮我涨涨人气呗, 好让我多认识些外国人.",
    :links [{:text "@jiyinyiyong", :url "https://twitter.com/jiyinyiyong"}]}
   {:title "身高有多少?", :content "一米七多一点吧"}
   {:title "你是哪年生的?", :content "91"}
   {:title "你老家哪里?", :content "浙江啊, 我家到东阳算比较近吧, 山比较多, 可以想象一下我的性格 :("}
   {:title "喜欢吃那些食物?", :content "蒸凤爪, 橘子, 西瓜, 好多叫不来的... 反而是忌口比较多, 不能吃辣, 海鲜也吃得不多"}
   {:title "饿了么", :content "前东家. 我最近经常用饿了么点外卖"}
   {:title "你学过 Haskell 吗?",
    :content "尝试过, 只能说学了其中一些概念, 用在了 Clojure 项目里, 至今无法正常使用 Monad 相关技术. 不过我绝对认同 Haskell 所建立的世界观."}
   {:title "博客地址",
    :content "我的博客主要在几个网站上吧.",
    :links [{:text "Segmentfault", :url "https://segmentfault.com/blog/jiyinyiyong"}
            {:text "Medium", :url "https://medium.com/@jiyinyiyong/"}
            {:text "Hashnode", :url "https://hashnode.com/@jiyinyiyong/stories"}]}
   {:title "玩过 Linux 吗?", :content "当然了, 当年折腾过 Ubuntu, 现在和经常去 SHLUG 听他们聊天."}])

(def tags #{"Clojure" "React" "上海" "杭州" "Teambition" "饿了么" "Cirru"})
