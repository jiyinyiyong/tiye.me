
{}
  :home $ %{} :Page
    :title "|题叶"
    :content $ []
      %:: :Content :text "|I made Calcit scripting language!"
      %:: :Content :title "|Vlogs"
      %:: :Content :links $ []
        %:: :Content :url |https://space.bilibili.com/14227306 |Bilibili
      %:: :Content :title "|Focuses"
      %:: :Content :links $ []
        %:: :Content :route :calcit |Calcit
        %:: :Content :route :webgpu-art "|WebGPU Art"

      %:: :Content :title "|My..."
      %:: :Content :links $ []
        %:: :Content :route :skills "|Skills"
        %:: :Content :route :artworks "|Artworks"
        %:: :Content :route :contacts |Contacts
        %:: :Content :route :projects |Projects
        %:: :Content :route :toolkits |Toolkits
        %:: :Content :route :sharings |Sharings
        %:: :Content :route :donation |Donation
        %:: :Content :route :admires |Admires
        %:: :Content :route :social |Social
        %:: :Content :route :blogs |Blogs
        %:: :Content :route :years |Reviews
        %:: :Content :route :genshin |Games
        %:: :Content :route :career |Career

  :projects $ %{} :Page
    :title |Projects
    :content $ []
      %:: :Content :title "|Projects"
      %:: :Content :links $ []
        %:: :Content :route :respo |Respo
        %:: :Content :route :cumulo |Cumulo
        %:: :Content :route :cirru |Cirru
        %:: :Content :route :calcit |Calcit
        %:: :Content :route :quamolit |Quamolit
        %:: :Content :route :quamolit |Triadica

  :respo $ %{} :Page
    :title |Respo
    :content $ []
      %:: :Content :text "|Tiny virtual DOM library on immutable data, available in serveral Functional Programming languages"

      %:: :Content :links $ []
        %:: :Content :url |https://github.com/Respo/respo.mbt "|GitHub respo.mbt"
        %:: :Content :url |https://github.com/Respo/respo.rs "|GitHub respo.rs"
        %:: :Content :url |https://github.com/Respo/respo.calcit "|GitHub respo.calcit"
        %:: :Content :url |https://github.com/Respo/respo.cljs "|GitHub respo.cljs"

  :cumulo $ %{} :Page
    :title |Cumulo
    :content $ []
      %:: :Content :text "|What if servers use uni-directional data, with diff/patch? Let's try!"
      %:: :Content :links $ []
        %:: :Content :url |https://github.com/Cumulo/ "|GitHub Cumulo"
      %:: :Content :text "|also find demos in:"
      %:: :Content :links $ []
        %:: :Content :route :topixim |TopixIM

  :cirru $ %{} :Page
    :title |Cirru
    :content $ []
      %:: :Content :text "|Modern interface for S-Expressions, structual editing, semi-graphic tree editor"
      %:: :Content :links $ []
        %:: :Content :url |https://cirru.org/ "|cirru.org"
      %:: :Content :text "|with text form in an indentation syntax:"
      %:: :Content :links $ []
        %:: :Content :url |http://text.cirru.org/ "|Cirru Text"
      %:: :Content :title |演示
      %:: :Content :links $ []
        %:: :Content :url |https://www.bilibili.com/video/BV1gv411W7eu "|Calcit Editor 使用介绍"
        %:: :Content :url |https://www.bilibili.com/video/BV1Ky4y137g4 "|Cirru 语法介绍"

  :quamolit $ %{} :Page
    :title |Quamolit
    :content $ []
      %:: :Content :text "|What if animations/graphics in declarative code or functions?"
      %:: :Content :links $ []
        %:: :Content :url |https://github.com/Quamolit/quamolit.calcit "|Quamolit for animations"
        %:: :Content :url |https://github.com/Phlox-GL/phlox "|Phlox for 2D shapes"
        %:: :Content :url |https://github.com/Quatrefoil-GL/quatrefoil/ "|Quatrfoil for 3D shapes"
      %:: :Content :title "|演示"
      %:: :Content :links $ []
        %:: :Content :url |https://www.bilibili.com/video/BV1L44y1B7Bd "|Quamolit 开发记录，函数式重构初步，0608"
        %:: :Content :url |https://www.bilibili.com/video/BV1Uw411d79p "|Quatrefoil 演示 Lorenz attractor (洛伦茨吸引子)"
        %:: :Content :url |https://www.bilibili.com/video/BV1if4y1b7cg "|Quatrefoil 开发记录：螺线控制 Hopf 纤维丛，等"

  :toolkits $ %{} :Page
    :title |Toolkits
    :content $ []
      %:: :Content :title "|Toolkits"
      %:: :Content :text "|Some of my tiny pieces can be found on"
      %:: :Content :links $ []
        %:: :Content :route :memkits |Memkits
        %:: :Content :route :topixim |TopixIM
        %:: :Content :route :mvc-works "|MVC Works"

  :topixim $ %{} :Page
    :title |TopixIM
    :content $ []
      %:: :Content :text "|Real-time collaborative toy apps"
      %:: :Content :links $ []
        %:: :Content :url |https://github.com/TopixIM/ "|GitHub TopixIM"

  :memkits $ %{} :Page
    :title |Memkits
    :content $ []
      %:: :Content :text "|Toolkits to extend brain and memory"
      %:: :Content :links $ []
        %:: :Content :url |https://github.com/memkits "|Memkits"

  :mvc-works $ %{} :Page
    :title "|MVC Works"
    :content $ []
      %:: :Content :text "|random tools to support MVC"
      %:: :Content :links $ []
        %:: :Content :url |https://github.com/mvc-works/ "|MVC Works"
        %:: :Content :url |https://github.com/worktools/ "|Work tools"

  :social $ %{} :Page
    :title "|Social"
    :content $ []
      %:: :Content :title |Friends
      %:: :Content :links $ []
        %:: :Content :url |https://github.com/b-conf "|BConf"
        %:: :Content :url |https://fp-china.org "|FP China"
        %:: :Content :url |http://www.shlug.org/ "|SHLUG"

      %:: :Content :title |Forums
      %:: :Content :links $ []
        %:: :Content :url |http://clojureverse.org "|ClojureVerse"
        %:: :Content :url |http://cnodejs.org "|CNode"
        %:: :Content :url |http://react-china.org/ "|React China"
        %:: :Content :url |http://clojure-china.org "|Clojure China"

  :contacts $ %{} :Page
    :title |Contacts
    :content $ []
      %:: :Content :text "|Find me on"
      %:: :Content :links $ []
        %:: :Content :url |https://www.zhihu.com/people/jiyinyiyong/posts |知乎
        %:: :Content :url |https://twitter.com/tiyecirru |Twitter
        %:: :Content :url |http://weibo.com/jiyinyiyong/ |微博
        %:: :Content :url |https://www.youtube.com/c/JiyinYiyong/videos |YouTube

  :years $ %{} :Page
    :title "|Year Reviews"
    :content $ []
      %:: :Content :links $ []
        %:: :Content :url |https://medium.com/@jiyinyiyong/wip-2020-working-projects-38dc6155d6b5 "|2020 working projects"
        %:: :Content :url |https://medium.com/@jiyinyiyong/year-review-of-2019-on-coding-and-moods-4f4125102e62 "|Year review of 2019, on coding and moods"
        %:: :Content :url |https://medium.com/@jiyinyiyong/year-review-my-clojurescript-pieces-in-2018-da7233649eab "|Year review, my ClojureScript pieces in 2018"
        %:: :Content :url |https://segmentfault.com/a/1190000020389563 "|Cirru 后续更新维护: 2016~2019"
        %:: :Content :url |https://segmentfault.com/a/1190000012066245 "|我在 ClojureScript 的 2017"
        %:: :Content :url |https://segmentfault.com/a/1190000009737250 "|Cirru 演进历程: 2012 ~ 2016"
        %:: :Content :url |https://segmentfault.com/a/1190000004209473 "|Cirru Project in 2015"

      %:: :Content :text "|Review 10 years of programming"
      %:: :Content :image |https://cos-sh.tiye.me/cos-up/8b4560e5d6d76a8afee5369b6f11420c-mmexport1695660565734.png "|Reviews of commits"

  :blogs $ %{} :Page
    :title "|Blogs"
    :content $ []
      %:: :Content :title |Writings
      %:: :Content :links $ []
        %:: :Content :url |https://segmentfault.com/blog/jiyinyiyong |SegmentFault
        %:: :Content :url |https://www.zhihu.com/people/jiyinyiyong/posts |知乎
        %:: :Content :url |https://medium.com/@jiyinyiyong |Medium
      %:: :Content :title |Deprecated
      %:: :Content :links $ []
        %:: :Content :url |https://github.com/jiyinyiyong/blog2 "|Markdown 静态文件"
        %:: :Content :url |https://github.com/jiyinyiyong/article "|Github Articles in HTML"
        %:: :Content :url |http://jiyinyiyong.blog.163.com/ "|网易博客"
        %:: :Content :url |http://learning-notes.diandian.com/ "|点点, 学习笔记"
        %:: :Content :url |http://thinking.diandian.com/ "|点点, 投入的想法"
        %:: :Content :url |http://beg-silence.tumblr.com/ "|Like Silence 博客"

  :sharings $ %{} :Page
    :title |Sharings
    :content $ []
      %:: :Content :text "|I made sharings, mostly in Shanghai and related to React and ClojureScript."
      %:: :Content :links $ []
        %:: :Content :url |https://www.bilibili.com/video/BV1Yg411K73P/ "|Calcit-js 开发的阶段介绍 2021-11"
        %:: :Content :url |https://gist.github.com/tiye/561cd06ad1a1537dc8bcc15109bcf1cc "|2018-09 上海 FCC, ClojureScript 开发体验演示"
        %:: :Content :url |http://cdn.tiye.me/slides/cljs-virtual-dom.key "|2018-08 广州 React Conf, Virtual DOM ideas"
        %:: :Content :url |https://gist.github.com/tiye/b403a24667a3f2b93afdd6e9f57f6f10 "|2018-07 台北, ClojureScript"
        %:: :Content :url |https://gist.github.com/tiye/7e6993079dea15e6a00c9ccd746b7074 "|2017-05 FP聚会, ClojureScript"
        %:: :Content :url |https://os.alipayobjects.com/rmsportal/WbKDoPrtkHaxTuOjOZQy.pdf "|2016-12 杭州 D2, React 到 ClojureScript"
        %:: :Content :url |https://github.com/tiye/100offer-sharing/blob/master/slides.md "|2016-01 简聊 React"

  :skills $ %{} :Page
    :title |Skills
    :content $ []
      %:: :Content :title "|Skills"
      %:: :Content :text "|Worked in TypeScript/React and some Node.js for years."
      %:: :Content :text "|Using ClojureScript/Calcit for years, FP beliver."
      %:: :Content :text "|Trying Rust and WGSL in personal projects."

  :calcit $ %{} :Page
    :title |Calcit
    :content $ []
      %:: :Content :text "|Calcit: a Lisp dialect based on Cirru. Inspired by ClojureScript."
      %:: :Content :links $ []
        %:: :Content :url |https://calcit-lang.org "|calcit-lang.org"
      %:: :Content :title "|演示"
      %:: :Content :links $ []
        %:: :Content :url |https://www.bilibili.com/video/BV1Rbv6BtE48 "|Calcit 语言依赖命令行接入 AI 代码生成的探索"
        %:: :Content :url |https://www.bilibili.com/video/BV1Yg411K73P "|Calcit-js 开发的阶段介绍 2021-11"
        %:: :Content :url |https://www.bilibili.com/video/BV1d44y1z71g "|如何运行 calcit-js 项目的一个演示"
        %:: :Content :url |https://www.bilibili.com/video/BV1uq4y1W7E4 "|calcit-js 开发记录: HUD 报错方案"
        %:: :Content :url |https://www.bilibili.com/video/BV1G54y1H7Hh "|缩进语法写 Lisp"

  :admires $ %{} :Page
    :title |偶像
    :content $ []
      %:: :Content :text "|For computer interface design:"
      %:: :Content :links $ []
        %:: :Content :url |http://worrydream.com/ "|Bret Victor"

      %:: :Content :text "|Google Wave"
      %:: :Content :links $ []
        %:: :Content :url |https://www.bilibili.com/video/BV1RU4y1g7tf "|Google Wave"

      %:: :Content :text "|Several programming language designers."

  :genshin $ %{} :Page
    :title |原神
    :content $ []
      %:: :Content :text "|探索地图"
      %:: :Content :title |剪辑
      %:: :Content :links $ []
        %:: :Content :url |https://www.bilibili.com/video/BV1bL411b77G "|早柚 在群玉阁顶 打哈欠"
        %:: :Content :url |https://www.bilibili.com/video/BV1e44y1y74i "|早柚 仙女棒"
        %:: :Content :url |https://www.bilibili.com/video/BV1Kh411q7ti "|凝光: 天动万象!"

  :artworks $ %{} :Page
    :title |Artworks
    :content $ []
      %:: :Content :text "|WebGL generative art"
      %:: :Content :xigua |https://www.ixigua.com/iframe/7091456248008311304?autoplay=0
      %:: :Content :xigua |https://www.ixigua.com/iframe/7111290341735137823?autoplay=0
      %:: :Content :xigua |https://www.ixigua.com/iframe/7114946237962551838?autoplay=0
      %:: :Content :xigua |https://www.ixigua.com/iframe/7141707370979131941?autoplay=0
      %:: :Content :xigua |https://www.ixigua.com/iframe/7128061977837961741?autoplay=0
      %:: :Content :xigua |https://www.ixigua.com/iframe/7181125285817877048?autoplay=0
      %:: :Content :text "|more demos can be found on my bilibili."

  :donation $ %{} :Page
    :title |Donation
    :content $ []
      %:: :Content :text "|I'm learning paint with code. I collect news on Web tech. Found them in my videos."
      %:: :Content :links $ []
        %:: :Content :url |https://afdian.net/a/ti-ye?tab=home "|爱发电"
      %:: :Content :text "|Example:"
      %:: :Content :xigua |https://www.ixigua.com/iframe/7125731312362750495?autoplay=0

  :webgpu-art $ %{} :Page
    :title "|WebGPU Art"
    :content $ []
      %:: :Content :text "|WebGL toys"
      %:: :Content :links $ []
        %:: :Content :url |https://github.com/Triadica/triadica-space "|Calcit-js library of Triadica"
        %:: :Content :url |https://github.com/Triadica/triadica.ts "|TypeScript library of Triadica"
      %:: :Content :xigua |https://www.ixigua.com/iframe/7119835590593511966?autoplay=0
      %:: :Content :text "|WebGPU toys"
      %:: :Content :links $ []
        %:: :Content :url |https://webgpu.art/wgsl-shadertoy/ "|WGSL Shadertoy"
        %:: :Content :url |https://webgpu.art/lagopus.calcit/ "|Lagopus: states and shapes with WebGPU"
        %:: :Content :url |https://webgpu.art/protea/ "|Protea: compute shader and shapes with WebGPU"
        %:: :Content :url |https://compute.toys/profile/jiyinyiyong "|my compute.toys page"
  :career $ %{} :Page
    :title |Career
    :content $ []
      %:: :Content :text "|Most the time I serve a CoffeeScript/JavaScript/TypeScript programmer and working on Browser/Node.js apps"
      %:: :Content :text "|Joined TickTick in Mar 2013"
      %:: :Content :text "|Joined Teambition in Feb 2014"
      %:: :Content :text "|Joined Eleme in May 2016"
      %:: :Content :text "|Joined JiMeng in Jul 2017"
      %:: :Content :text "|Joined friends' startup in Nov 2021"
      %:: :Content :text "|Joined NIO in Oct 2022"
