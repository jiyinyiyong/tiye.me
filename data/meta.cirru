
{}
  :home $ {}
    :title "|题叶"
    :content $ []
      :: :text "|I made Calcit scripting language!"
      :: :title "|Vlogs"
      :: :links $ []
        :: :url |https://space.bilibili.com/14227306 |Bilibili
      :: :title "|Focuses"
      :: :links $ []
        :: :route :calcit |Calcit
        :: :route :webgpu-art "|WebGPU Art"

      :: :title "|My..."
      :: :links $ []
        :: :route :skills "|Skills"
        :: :route :artworks "|Artworks"
        :: :route :contacts |Contacts
        :: :route :projects |Projects
        :: :route :toolkits |Toolkits
        :: :route :sharings |Sharings
        :: :route :donation |Donation
        :: :route :admires |Admires
        :: :route :social |Social
        :: :route :blogs |Blogs
        :: :route :years |Reviews
        :: :route :genshin |Games
        :: :route :career |Career

  :projects $ {}
    :title |Projects
    :content $ []
      :: :title "|Projects"
      :: :links $ []
        :: :route :respo |Respo
        :: :route :cumulo |Cumulo
        :: :route :cirru |Cirru
        :: :route :calcit |Calcit
        :: :route :quamolit |Quamolit
        :: :route :quamolit |Triadica

  :respo $ {}
    :title |Respo
    :content $ []
      :: :text "|Virtual DOM library on immutable data, available in ClojureScript, now in calcit-js"

      :: :links $ []
        :: :url |http://github.com/Respo "|GitHub respo.calcit"
        :: :url |http://github.com/Respo/respo.cljs "|GitHub respo.cljs"

  :cumulo $ {}
    :title |Cumulo
    :content $ []
      :: :text "|What if servers use uni-directional data, with diff/patch? Let's try!"
      :: :links $ []
        :: :url |https://github.com/Cumulo/ "|GitHub Cumulo"
      :: :text "|also find demos in:"
      :: :links $ []
        :: :route :topixim |TopixIM

  :cirru $ {}
    :title |Cirru
    :content $ []
      :: :text "|Modern interface for S-Expressions, structual editing, semi-graphic tree editor"
      :: :links $ []
        :: :url |https://cirru.org/ "|cirru.org"
      :: :text "|with text form in an indentation syntax:"
      :: :links $ []
        :: :url |http://text.cirru.org/ "|Cirru Text"
      :: :title |演示
      :: :links $ []
        :: :url |https://www.bilibili.com/video/BV1gv411W7eu "|Calcit Editor 使用介绍"
        :: :url |https://www.bilibili.com/video/BV1Ky4y137g4 "|Cirru 语法介绍"

  :quamolit $ {}
    :title |Quamolit
    :content $ []
      :: :text "|What if animations/graphics in declarative code or functions?"
      :: :links $ []
        :: :url |https://github.com/Quamolit/quamolit.calcit "|Quamolit for animations"
        :: :url |https://github.com/Phlox-GL/phlox "|Phlox for 2D shapes"
        :: :url |https://github.com/Quatrefoil-GL/quatrefoil/ "|Quatrfoil for 3D shapes"
      :: :title "|演示"
      :: :links $ []
        :: :url |https://www.bilibili.com/video/BV1L44y1B7Bd "|Quamolit 开发记录，函数式重构初步，0608"
        :: :url |https://www.bilibili.com/video/BV1Uw411d79p "|Quatrefoil 演示 Lorenz attractor (洛伦茨吸引子)"
        :: :url |https://www.bilibili.com/video/BV1if4y1b7cg "|Quatrefoil 开发记录：螺线控制 Hopf 纤维丛，等"

  :toolkits $ {}
    :title |Toolkits
    :content $ []
      :: :title "|Toolkits"
      :: :text "|Some of my tiny pieces can be found on"
      :: :links $ []
        :: :route :memkits |Memkits
        :: :route :topixim |TopixIM
        :: :route :mvc-works "|MVC Works"

  :topixim $ {}
    :title |TopixIM
    :content $ []
      :: :text "|Real-time collaborative toy apps"
      :: :links $ []
        :: :url |https://github.com/TopixIM/ "|GitHub TopixIM"

  :memkits $ {}
    :title |Memkits
    :content $ []
      :: :text "|Toolkits to extend brain and memory"
      :: :links $ []
        :: :url |https://github.com/memkits "|Memkits"

  :mvc-works $ {}
    :title "|MVC Works"
    :content $ []
      :: :text "|random tools to support MVC"
      :: :links $ []
        :: :url |https://github.com/mvc-works/ "|MVC Works"
        :: :url |https://github.com/worktools/ "|Work tools"

  :social $ {}
    :title "|Social"
    :content $ []
      :: :title |Friends
      :: :links $ []
        :: :url |https://github.com/b-conf "|BConf"
        :: :url |https://fp-china.org "|FP China"
        :: :url |http://www.shlug.org/ "|SHLUG"

      :: :title |Forums
      :: :links $ []
        :: :url |http://clojureverse.org "|ClojureVerse"
        :: :url |http://cnodejs.org "|CNode"
        :: :url |http://react-china.org/ "|React China"
        :: :url |http://clojure-china.org "|Clojure China"

  :contacts $ {}
    :title |Contacts
    :content $ []
      :: :text "|Find me on"
      :: :links $ []
        :: :url |https://www.zhihu.com/people/jiyinyiyong/posts |知乎
        :: :url |https://twitter.com/tiyecirru |Twitter
        :: :url |http://weibo.com/jiyinyiyong/ |微博
        :: :url |https://www.youtube.com/c/JiyinYiyong/videos |YouTube

  :years $ {}
    :title "|Year Reviews"
    :content $ []
      :: :links $ []
        :: :url |https://medium.com/@jiyinyiyong/wip-2020-working-projects-38dc6155d6b5 "|2020 working projects"
        :: :url |https://medium.com/@jiyinyiyong/year-review-of-2019-on-coding-and-moods-4f4125102e62 "|Year review of 2019, on coding and moods"
        :: :url |https://medium.com/@jiyinyiyong/year-review-my-clojurescript-pieces-in-2018-da7233649eab "|Year review, my ClojureScript pieces in 2018"
        :: :url |https://segmentfault.com/a/1190000020389563 "|Cirru 后续更新维护: 2016~2019"
        :: :url |https://segmentfault.com/a/1190000012066245 "|我在 ClojureScript 的 2017"
        :: :url |https://segmentfault.com/a/1190000009737250 "|Cirru 演进历程: 2012 ~ 2016"
        :: :url |https://segmentfault.com/a/1190000004209473 "|Cirru Project in 2015"

      :: :text "|Review 10 years of programming"
      :: :image |https://cos-sh.tiye.me/cos-up/8b4560e5d6d76a8afee5369b6f11420c-mmexport1695660565734.png "|Reviews of commits"
        , nil

  :blogs $ {}
    :title "|Blogs"
    :content $ []
      :: :title |Writings
      :: :links $ []
        :: :url |https://segmentfault.com/blog/jiyinyiyong |SegmentFault
        :: :url |https://www.zhihu.com/people/jiyinyiyong/posts |知乎
        :: :url |https://medium.com/@jiyinyiyong |Medium
      :: :title |Deprecated
      :: :links $ []
        :: :url |https://github.com/jiyinyiyong/blog2 "|Markdown 静态文件"
        :: :url |https://github.com/jiyinyiyong/article "|Github Articles in HTML"
        :: :url |http://jiyinyiyong.blog.163.com/ "|网易博客"
        :: :url |http://learning-notes.diandian.com/ "|点点, 学习笔记"
        :: :url |http://thinking.diandian.com/ "|点点, 投入的想法"
        :: :url |http://beg-silence.tumblr.com/ "|Like Silence 博客"

  :sharings $ {}
    :title |Sharings
    :content $ []
      :: :text "|I made sharings, mostly in Shanghai and related to React and ClojureScript."
      :: :links $ []
        :: :url |https://www.bilibili.com/video/BV1Yg411K73P/ "|Calcit-js 开发的阶段介绍 2021-11"
        :: :url |https://gist.github.com/tiye/561cd06ad1a1537dc8bcc15109bcf1cc "|2018-09 上海 FCC, ClojureScript 开发体验演示"
        :: :url |http://cdn.tiye.me/slides/cljs-virtual-dom.key "|2018-08 广州 React Conf, Virtual DOM ideas"
        :: :url |https://gist.github.com/tiye/b403a24667a3f2b93afdd6e9f57f6f10 "|2018-07 台北, ClojureScript"
        :: :url |https://gist.github.com/tiye/7e6993079dea15e6a00c9ccd746b7074 "|2017-05 FP聚会, ClojureScript"
        :: :url |https://os.alipayobjects.com/rmsportal/WbKDoPrtkHaxTuOjOZQy.pdf "|2016-12 杭州 D2, React 到 ClojureScript"
        :: :url |https://github.com/tiye/100offer-sharing/blob/master/slides.md "|2016-01 简聊 React"

  :skills $ {}
    :title |Skills
    :content $ []
      :: :title "|Skills"
      :: :text "|Worked in TypeScript/React and some Node.js for years."
      :: :text "|Using ClojureScript/Calcit for years, FP beliver."
      :: :text "|Trying Rust and WGSL in personal projects."

  :calcit $ {}
    :title |Calcit
    :content $ []
      :: :text "|Calcit: a Lisp dialect based on Cirru. Inspired by ClojureScript."
      :: :links $ []
        :: :url |https://calcit-lang.org "|calcit-lang.org"
      :: :title "|演示"
      :: :links $ []
        :: :url |https://www.bilibili.com/video/BV1Yg411K73P "|Calcit-js 开发的阶段介绍 2021-11"
        :: :url |https://www.bilibili.com/video/BV1d44y1z71g "|如何运行 calcit-js 项目的一个演示"
        :: :url |https://www.bilibili.com/video/BV1uq4y1W7E4 "|calcit-js 开发记录: HUD 报错方案"
        :: :url |https://www.bilibili.com/video/BV1G54y1H7Hh "|缩进语法写 Lisp"

  :admires $ {}
    :title |偶像
    :content $ []
      :: :text "|For computer interface design:"
      :: :links $ []
        :: :url |http://worrydream.com/ "|Bret Victor"

      :: :text "|Google Wave"
      :: :links $ []
        :: :url |https://www.bilibili.com/video/BV1RU4y1g7tf "|Google Wave"

      :: :text "|Several programming language designers."

  :genshin $ {}
    :title |原神
    :content $ []
      :: :text "|探索地图"
      :: :title |剪辑
      :: :links $ []
        :: :url |https://www.bilibili.com/video/BV1bL411b77G "|早柚 在群玉阁顶 打哈欠"
        :: :url |https://www.bilibili.com/video/BV1e44y1y74i "|早柚 仙女棒"
        :: :url |https://www.bilibili.com/video/BV1Kh411q7ti "|凝光: 天动万象!"

  :artworks $ {}
    :title |Artworks
    :content $ []
      :: :text "|WebGL generative art"
      :: :xigua |https://www.ixigua.com/iframe/7091456248008311304?autoplay=0
      :: :xigua |https://www.ixigua.com/iframe/7111290341735137823?autoplay=0
      :: :xigua |https://www.ixigua.com/iframe/7114946237962551838?autoplay=0
      :: :xigua |https://www.ixigua.com/iframe/7141707370979131941?autoplay=0
      :: :xigua |https://www.ixigua.com/iframe/7128061977837961741?autoplay=0
      :: :xigua |https://www.ixigua.com/iframe/7181125285817877048?autoplay=0
      :: :text "|more demos can be found on my bilibili."

  :donation $ {}
    :title |Donation
    :content $ []
      :: :text "|I'm learning paint with code. I collect news on Web tech. Found them in my videos."
      :: :links $ []
        :: :url |https://afdian.net/a/ti-ye?tab=home "|爱发电"
      :: :text "|Example:"
      :: :xigua |https://www.ixigua.com/iframe/7125731312362750495?autoplay=0

  :webgpu-art $ {}
    :title "|WebGPU Art"
    :content $ []
      :: :text "|WebGL toys"
      :: :links $ []
        :: :url |https://github.com/Triadica/triadica-space "|Calcit-js library of Triadica"
        :: :url |https://github.com/Triadica/triadica.ts "|TypeScript library of Triadica"
      :: :xigua |https://www.ixigua.com/iframe/7119835590593511966?autoplay=0
      :: :text "|WebGPU toys"
      :: :links $ []
        :: :url |https://webgpu.art/wgsl-shadertoy/ "|WGSL Shadertoy"
        :: :url |https://webgpu.art/lagopus.calcit/ "|Lagopus: states and shapes with WebGPU"
        :: :url |https://webgpu.art/protea/ "|Protea: compute shader and shapes with WebGPU"
        :: :url |https://compute.toys/profile/jiyinyiyong "|my compute.toys page"
  :career $ {}
    :title |Career
    :content $ []
      :: :text "|Most the time I serve a CoffeeScript/JavaScript/TypeScript programmer and working on Browser/Node.js apps"
      :: :text "|Joined TickTick in Mar 2013"
      :: :text "|Joined Teambition in Feb 2014"
      :: :text "|Joined Eleme in May 2016"
      :: :text "|Joined JiMeng in Jul 2017"
      :: :text "|Joined friends' startup in Nov 2021"
      :: :text "|Joined NIO in Oct 2022"
