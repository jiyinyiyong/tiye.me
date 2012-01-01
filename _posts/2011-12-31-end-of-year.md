---
layout: default
title: 开始适应代码
tags:
  - Bash
  - 语言
  - 轻谈
  - Vim
---
早上看到份关于编程语言历史的`pdf`, 搜来了这个命令  
	convert -density 300 rotated.pdf rotated.ps  
也可以转图片格式, 巨大的图片蛮带劲, 于是看到图片了  
内容截止 2004, `Haskell`简单, `coffee`没出现  
语言总量满满的, 看了下`C`真难找, 随意看了下  
  
到了`Markdown`下很多习惯就要改变了, 毕竟方式不同  
原本中英文我空格的, 现在反引号我倒能设置`CSS`简化  
文本末尾的空格, 用`vim`批量增减吧, 怪受不了的  
加上标题以及初始的配置, 每次都要进行一遍机械的重复  
还要写个脚本自动写标题, 但我想增加`vim`就只能`bash`  
  
很想找办法让`Vim`在但个目录单独配置, 比如`set list`  
`Vim`的历史总归太长, 难以改变很多历史遗留的习惯  
而那些复杂是我不想学的, 一个人已经学`N`多语言了  
能力以外事情, 只好只想想, 难道`Webkit`架一个不成?  
把`js`的对象系统绑到终端也许能简化开发, 也许...  
  
到`v2ex`上问了些, 如自定义当前目录单独`.vimrc`配置  
	if filereadable(".vimrc")  
	source .vimrc  
	endif  
然后用`Vim`文件识别自动将`.md`文件设置标记空格  
	au BufRead,BufNewFile *.md,*.markdown set list  
  
刚刚写了一段`$ alias tails='l -l | tail -n'`  
模仿`Haskell`可以用`$ tails 3`察看目录最后`3`行  
反引号意义重大, 可惜`Bash`诸多语法都不像`Haskell`  
而且很多时候将变成语言数据类型观念在此失效  
不能不说`Shell`破坏了简介, 虽然终端的配置依然壮观  
