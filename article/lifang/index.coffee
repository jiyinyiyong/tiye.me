
doctype 5
html ->
	head ->
		title 'nothing'
		meta charset: 'utf-8'
		link rel: 'stylesheet', href: 'article.css'
	body ->
		side = 'sidebar'
		article id: 'article', ->
			para = 'paragraph'
			section class: para, ->
				nav '这是我即将开始写的一片文章, 关于桌面的美工的补充.'
				nav '我发现写代码真的不是想象那么简单的事情, 即便已有思路.'
				nav '开学前两周的生活可以说糟透了, 那么到处找网络上的人.'
				nav '我发先我真的是好喜欢纯粹的一类人, 连桌面都挑剔着.'
				nav '很多人都挑剔, 而我的结果却是只能忍受人们认为最难看的一个,'
				nav '我从刚开始就多么希望自己能够设计桌面啊. 如今也没消亡.'
			section class: para, ->
				nav ->
					span class: 'eng', 'Ubuntu Compiz'
					span '给了我最多感觉, 其次是'
					span class: 'eng', 'Metro'
					', 让我沉醉不已.'
				nav '想法很简单, 大半年前标记名字"侵街", 现在换用"里坊".'
				nav '后面...'
		article id: side, ->
			nav 'empty'
