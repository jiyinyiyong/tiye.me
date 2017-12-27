
(ns app.schema )

(def about-zhihu
  {:title "知乎账号",
   :content "算是重度用户了, 深受知乎影响的年轻人啊.",
   :links [{:text "知乎", :url "https://www.zhihu.com/people/jiyinyiyong/activities"}]})

(def about-eleme {:title "前饿了么员工", :content "2016 年加入饿了么大前端. 经常用饿了么点外卖"})

(def about-dreamlover
  {:title "喜欢什么样的女生?",
   :content "相貌举止是一个事, 然后眼界和性格是一个事, 具体反而我自己都想不清楚了. 另一方面我希望她会一点代码, 这样能更好地相互理解和帮助."})

(def about-wechat {:title "微信账号", :content "找我商量技术和项目可以直接加我微信账号 jiyinyiyong, 注明来自 tiye.me"})

(def about-cirru
  {:title "Cirru 是什么意思?",
   :content "Cirru 是我的一个项目, 我认为用语法树进行编程才是正确的, 并且在这个方向是做了大量的探索, 最终发明了 Cumulo Editor 这个协同语法树开发工具.",
   :links [{:text "Cirru 首页", :url "http://cirru.org"}
           {:text "GitHub/Cirru", :url "https://github.com/Cirru"}
           {:text "Cumulo Editor", :url "https://github.com/Cirru/cumulo-editor/"}]})

(def about-girlfriend {:title "有对象了吗?", :content "还没呢, 大婶."})

(def tags ["上海" "程序员" "Clojure" "React" "杭州" "English"])

(def about-hobby
  {:title "兴趣爱好",
   :content "喜欢用手机拍照刷朋友圈, 也喜欢偷拍小姑娘. 然后也经常地铁或者骑行, 把大城市当做迷宫一样瞎逛. 探索未知世界还是可以挺开心的. 对书店图书馆有兴趣, 刷过西西弗钟书阁, 可是没那么多时间看书啊."})

(def about-weibo
  {:title "微博",
   :content "我的微博账号是\"题叶\", 会经常从国外社区贴一些技术新闻过来, 也欢迎关注我的 Twitter 账号 @jiyinyiyong",
   :links [{:text "@题叶", :url "https://weibo.com/jiyinyiyong/"}]})

(def about-fp
  {:title "函数式编程(FP)",
   :content "我认为函数式编程是未来几年编程领域一个重要的变化, 特别是 Haskell 当中越来越多特性会在主流编程语言社区当中被吸收",
   :links [{:text "FP China", :url "http://fp-china.org"}]})

(def about-programmer
  {:title "你是怎样一个程序员", :content "野生程序员, 写了四年以上前端, 用小众语言比较多. 自我感觉吧有点自负但实际上很宅很死板, 线上线下恐怕差别很大."})

(def about-name {:title "真名是什么, 姓名啊", :content "我认为一个程序员应该尽量不在搜索引擎里留私人信息."})

(def about-cartoon
  {:title "看过那些动漫, 追那些番?",
   :content "最喜欢的有刀剑神域, Aldnoah Zero, 从零开始的异世界, 四月是你的谎言, 其他追过的也不少, 最喜欢的分类是智斗和科幻. 好像特别是梶浦由记配乐的最爱看. 国漫的话, 除了特别幼稚或者复古的都会试着看下吧, 一般智商在线都会翻一翻, 宅男嘛."})

(def about-test {:title "测试一下", :content "1 test passed."})

(def about-lovelorn
  {:title "失恋过吧?", :content "大概是人生无法逃避的一段旅程. 这种感觉折磨了我好几个月, 也改变了我不少, 我最后还是过来了. 过去之后, 有点麻木了."})

(def about-constellation {:title "你什么星座", :content "巨蟹座..吧.."})

(def about-vue
  {:title "Vue 这个框架如何?",
   :content "我觉得 Vue 对于创业者来说是不错的选择, 或者需要快速完成页面的时候. 但是某种程度上 Vue 回避了前端社区对于函数式编程的大量研究, 而我是笃信函数式编程的, 我相信 FP 能带来更好的方案. 但就实际情况来说, Vue 确实用起来更加方便, 特别是简单的页面."})

(def about-douban
  {:title "上不上豆瓣?",
   :content "我觉得豆瓣是很有前景的一个网站, 可惜实时性不够强错过了很多可能性... 然后我就拿豆瓣当记录本用了.",
   :links [{:text "豆瓣", :url "https://www.douban.com/people/jiyinyiyong/"}]})

(def about-respo
  {:title "Respo 是什么?",
   :content "我花了很多时间研究基于 Virtual DOM 的渲染方案, Respo 是我自己实现和优化的 Virtual DOM."})

(def about-clojure
  {:title "沉迷 ClojureScript",
   :content "从 2015 年底开始长期研究 ClojureScript 生态, 以及改进单页面应用. Clojure 是最好的编程语言.",
   :links [{:text "Clojure 中文导航", :url "http://map.clj.im/"}]})

(def about-teambition
  {:title "前 Teambition 员工",
   :content "我在 2014 年初加入 Teambition, 2016 年初离开, 大部分时间在简聊团队开发 React 应用. 那两年喜悦的不快的, 都是我成长最快的两年. 技术上讲实时单页面也是未来我很在乎的一个方向."})

(def about-tiye
  {:title "\"题叶\"这个名字是什么意思?", :content "从张三影的词里来的, 原典是在唐传奇里. 自己找比较有意思, 别追问我啦."})

(def about-songs
  {:title "喜欢听谁的歌",
   :content "早年听南拳妈妈和黄淑慧的歌开的窍, 工作以后喜欢听的有梁静茹, 曹芳, 弦子... 没有音乐方面的训练觉得挺遗憾.",
   :links [{:text "虾米:题叶", :url "http://www.xiami.com/space/lib-song/u/685374"}]})

(def about-jiyinyiyong
  {:title "\"jiyinyiyong\"是什么, 怎么念啊?", :content "这是我的小名在天台话里的发音, 是两个字, 为了方便就念成 Jon 吧..."})

(def about-cumulo
  {:title "Cumulo 项目",
   :content "Cumulo 是一个通过 Diff 算法来进行多端同步的试验, 可以在 GitHub 上跟进.",
   :links [{:text "GitHub/Cumulo", :url "https://github.com/Cumulo/"}
           {:text "Recollect", :url "https://github.com/Cumulo/recollect"}]})

(def about-blog
  {:title "博客(blog)地址",
   :content "我的博客主要在几个网站上吧.",
   :links [{:text "Segmentfault", :url "https://segmentfault.com/blog/jiyinyiyong"}
           {:text "Medium", :url "https://medium.com/@jiyinyiyong/"}
           {:text "Hashnode", :url "https://hashnode.com/@jiyinyiyong/stories"}
           {:text "豆瓣", :url "https://www.douban.com/people/jiyinyiyong/notes"}]})

(def about-dream
  {:title "你有什么梦想?", :content "希望 Respo Cirru Cumulo 这几套技术方案能更流行和更完善. 然后个人充实生活美满."})

(def about-profession
  {:title "工作",
   :content "前端工程师. 熟悉单页面应用前端开发, 对前端的函数式编程有大量投入. 熟悉 CoffeeScript 和 ClojureScript. 曾经在 TickTick, Teambition, 饿了么做前端."})

(def about-lisp
  {:title "对 Lisp 的感想",
   :content "我已经号称自己是 Lisp 程序员了, 2016 年底开始折腾 ClojureScript, 已经着魔了, 希望我能好好工作, 不要还没赚到钱就步四大魔王的后尘."})

(def about-hate {:title "讨厌哪些东西?", :content "某些恐怖的动物. 被人劝喝酒或者玩心理游戏. 辣椒. 消耗时间猜忌."})

(def about-react
  {:title "React 深度用户",
   :content "从 2014 年开始关注 React 社区, 熟悉近年的发展. 我还参与了 React 中文社区线上的建设.",
   :links [{:text "React 中文导航", :url "http://nav.react-china.org"}]})

(def about-shanghai
  {:title "居住在上海",
   :content "2014 起在上海工作. 我呆过张江跟普陀, 这些年逛过的地方应该也不少. 去过其他两三个城市之后, 对比了一些浅层的东西, 我对上海有了更多的依赖, 某些角落也透露出更多世界都市的魅力."})

(def about-haskell
  {:title "你学过 Haskell 吗?",
   :content "尝试过, 只能说学了其中一些概念, 用在了 Clojure 项目里, 至今无法正常使用 Monad 相关技术. 不过我绝对认同 Haskell 所建立的世界观."})

(def about-english
  {:title "English users",
   :content "This is the home page of Jiyinyiyong. Find more about me on Twitter please!",
   :links [{:text "@jiyinyiyong", :url "https://twitter.com/jiyinyiyong"}]})

(def about-twitter
  {:title "有 Twitter 吗?",
   :content "有啊, 为了能更好地和外国人交流, 我已经刷了很久的 Twitter 了, 总算混熟了几个在社区的有名的人物, 帮我涨涨人气呗, 好让我多认识些外国人.",
   :links [{:text "@jiyinyiyong", :url "https://twitter.com/jiyinyiyong"}]})

(def about-worldview
  {:title "世界观什么样?",
   :content "我觉得自己是个生活在线上世界的人, 乐此不疲地看着各种产业和科技的新闻, 生活却是写着代码刷着剧. 我希望有一天在线下也能像在线上来去飞快, 也不用为了陌生地段而担心, 希望科技能快速发展, 我也愿意为此投入时间金钱."})

(def information
  [about-clojure
   about-blog
   about-react
   about-cirru
   about-twitter
   about-cumulo
   about-fp
   about-weibo
   about-tiye
   about-jiyinyiyong
   about-dreamlover
   about-vue
   about-teambition
   about-shanghai
   about-english
   about-lovelorn
   about-wechat
   about-songs
   about-profession
   about-girlfriend
   about-hobby
   about-zhihu
   about-haskell
   about-eleme
   about-lisp
   about-douban
   about-cartoon
   about-worldview
   about-name
   about-respo
   about-hate
   about-dream
   about-programmer
   about-test
   about-constellation
   {:title "浙江人, 在金华和杭州念书", :content "很熟悉杭州, 经常回杭州游玩和见朋友."}
   {:title "去过深圳吗?", :content "去过几次, 群里有几个朋友在深圳, 我还去深圳湾看过日出呢, 海边真是漂亮!"}
   {:title "去过厦门吗?", :content "去得不是时候, 也没进鼓浪屿和厦大, 反而晒伤了, 不开心"}
   {:title "摄影和拍照", :content "日常用小米手机拍拍拍, 对美景略有兴趣, 有好的照片欢迎扔给我瞧瞧!"}
   {:title "身高有多少?", :content "一米七多一点吧"}
   {:title "你是哪年生的?", :content "91"}
   {:title "你老家哪里?", :content "浙江啊, 我家到横店比较近吧, 山比较多, 可以想象一下我的性格."}
   {:title "喜欢吃那些食物?", :content "蒸凤爪, 橘子, 西瓜, 好多叫不来的... 反而是忌口比较多, 不能吃辣, 海鲜也吃得不多"}
   {:title "玩过 Linux 吗?", :content "当然了, 当年折腾过 Ubuntu, 现在和经常去 SHLUG 听他们聊天."}])

(def store {:states {}, :buffer "", :query ""})
