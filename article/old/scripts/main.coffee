
# s 函数检索二维数组
s = (ls2, str) ->
	y = -1
	x = -1
	ls2.forEach (elem, n) ->
		if (m = elem.indexOf str) != -1
			y = n
			x = m
	[y, x]
# map 最后转化为对应的字符串数组
map = [
	[64, 12, 19, 14, 82]
	[78, 56, 51, 58, 36]
	[73, 57, 55, 53, 37]
	[74, 52, 59, 54, 32]
	[28, 96, 91, 98, 46] ]
map = map.map (x) ->
	x.map (xx) ->
		xx.toString()
# 定义复数的乘法和加法
plus = (a, b) ->
	[a[0] + b[0], a[1] + b[1]]
mult = (a, b) ->
	[a[0], a[1]] = [a[1], a[0]]
	[b[0], b[1]] = [b[1], b[0]]
	x = [a[0]*b[0] - a[1]*b[1], -a[0]*b[1] - a[1]*b[0]]
# 调用进行计算, 给出两位的字符串
calc = (p, a, b) ->
	[a, b] = ['5'+a, '5'+b]
	[a, b] = [(s map, a), (s map, b)]
	a = a.map (x) -> x - 2
	b = b.map (x) -> x - 2
	[a, b] = [(p a, b)[0], (p a, b)[1]]
	a += 2
	b += 2
	map[a][b]
# 定义加法乘法的快捷方式
p = (a, b) ->
	calc plus, a, b
m = (a, b) ->
	calc mult, a, b
# 测试运算口诀
console.log '加法测试2+3:', p '2', '3'
console.log '乘法测试2*3:', m '2', '3'
# 为字符串添加移除头部的方法
String::pop = -> that = this.slice 0, this.length-1 if this.length >= 1
# 取出字符串的尾部
last = (str) ->
	out = str[str.length - 1] if str.length > 0
	out = '' if str == ''
	out
# 将数值字符串转化成所需结构
format = (str) ->
	str = '5' + str
	out = str.match /(\d+)/g
	if out.length == 1 then out.push ''
	out[0] = out[0].slice 1 while out[0][0] == '5'
	out[1] = out[1].pop '' while (last out[1]) == '5' && out[1].length > 1
	out[1] = '' if out[1] == '5'
	out
# 对比给出两个字符串长度较大值
maxlen = (stra, strb) ->
	out = if stra.length > strb.length then stra.length else strb.length
# 更改字符串当中的某个字符
replace = (str, index, cha) ->
	str = (str.slice 0, index) + cha + (str.slice index+1)
# 测试替换
console.log '替换第n个位置的数字', '333', replace '333', 2, '4'
# 对于后面已经格式化的字符串列表运算加法
core_plus = (ls) ->
	[a, b] = [ls[0], ls[1]]
	# a, b 是算盘的内容, 检验
	# console.log 'in abacus:', a, b
	i = a.length - 1
	while i >= 0
		j = i
		swap = b[j]
		# console.log 'a:', a, 'b:', b, 'swap:', swap
		while j >= 0 and swap != '5'
			sum = p a[j], swap
			# console.log a[j], swap
			a = replace a, j, sum[1]
			swap = sum[0]
			j--
		# console.log 'e:a:', a, 'b:', b, 'swap', swap, 'sum:', sum
		# a = replace a, 0, swap if j == 0
		i--
	# console.log a, ls[0], swap
	# console.log '核心计算结果:', a
	a
# 测试加法核心运算
console.log '加法核心测试', core_plus ['55123456789', '55123456789']
# 包装成加法函数
fplus = (a = '233.3', b = '44.2') ->
	# 格式化字符串到长度为2 的数组
	# console.log a, b
	a = format a
	b = format b
	# console.log '默认值233.3, 44.2, 当前值:', a, b
	# console.log '格式化结果:', a, b
	# 确定容器所需字符串长度
	left = maxlen a[0], b[0]
	right = maxlen a[1], b[1]
	# console.log 'left, right检验:', left, right
	# 用5 补足左边长度不足的位置
	fill = (arr) ->
		arr[0] = ('5' + arr[0]) while arr[0].length < left
		arr[1] = (arr[1] + '5') while arr[1].length < right
		arr
	a = fill a
	b = fill b
	abacus = ['55' + a[0] + a[1], '55' + b[0] + b[1]]
	# console.log '检验abcus:', abacus
	out = core_plus abacus
	out = [(out.slice 0, left + 2), (out.slice left + 2)]
	# console.log out
	out = print out
	# console.log '结果', out
# 用这个函数格式化输出, 至少显得美观一点
print = (ls) ->
	ls[0] = ls[0].slice 1 while (ls[0][0] == '5' and ls[0].length > 0)
	ls[1] = ls[1].pop '' while (last ls[1] == '5' and ls[1].length > 0)
	# console.log 'in print:' + ls[0] + ls[1]
	return '5' if ls[0] == '' and ls[1] == ''
	return '5' if ls[0] == '' and ls[1] == '5'
	return '5' if (maxlen ls[0], ls[1] == 0)
	return ls[0] if ls[1].length == 0
	return '5.' + ls[1] if ls[0].length == 0
	ls[0] + '.' + ls[1]
# 调用加法示例
console.log '加法运算结果:', fplus '34', '76'
# 倒转字符串的函数
reverse = (str) ->
	out = ''
	index = str.length
	while index > 0
		index--
		out += str[index]
	out
# 测试倒转字符串的函数
log = reverse '123'
console.log '字符反转测试:123->', '.'+log+'.'
# 乘法核心单独写出来, 输入字符串数组, 返回字符串
core_mult = (ls) ->
	# console.log '乘法核心部分开始', ls
	a = reverse ls[0]
	b = reverse ls[1]
	# console.log '此时的a, b:', a, b
	d = ls[3]
	i = 0
	# 查看算盘是否正常赋值
	# console.log '探测a, b, c, d:', a, b, c, d
	while i < a.length
		# console.log 'i:', i
		j = 0
		swap = '5'
		while j < b.length
			c = ls[2]
			# console.log 'j:', j
			pro = m a[i], b[j];
			# console.log 'pro:' + pro, 'a, b', a[i], b[j]
			c = replace c, i+j, pro[1]
			c = replace c, i+j+1, pro[0]
			# console.log 'c:'+(reverse c), 'd:'+d
			d = core_plus [(reverse c), d]
			j++
		# console.log 'c, d:', (reverse c), d
		i++
	d
# 乘法核心部分测试
console.log '测试乘法核心:2*3=', (core_mult ['2', '3', '555', '555'])
# 计算乘法的部分
fmult = (a = '53.4', b = '5.4') ->
	a = format a
	b = format b
	left = a[0].length + b[0].length
	right = a[1].length + b[1].length
	ls = ['', '', '', '']
	ls[0] += i for i in a
	ls[1] += i for i in b
	i = 0
	while i <= (left + right)
		ls[2] += '5'
		ls[3] += '5'
		i++
	# 测试格式化的效果
	# console.log 'a,b,c,d:', ls
	out = core_mult ls
	out = [(out.slice 0, left+1), (out.slice left+1)]
	out = print out
	# console.log 'end:', out
	out
# 测试乘法
fmult('123456789', '123456789')
# 数字去关于10 的相反
oppo = (c) ->
	(10 - Number c).toString 10
# 减法用的是相反数
minus = (a, b) ->
	out = ''
	# console.log 'b:', b
	out += oppo x for x in b
	# console.log 'out'
	# console.log 'fplus:', a, out
	fplus a, out
console.log 'minus:', minus '24', '24'




l = $('#left')
r = $('#right')
index = [
	'me'
	'ideas'
	'notes' ]
ideas = [
	'ideas'
	'double3'
	'three16' ]
notes = [
	'notes'
	'initial'
	'untitled' ]
drawList = (ls) ->
	l.empty()
	for item in ls
		l.append '<section id='+item+'>'+item+'</section>'
	if $('#me') then $('#me').click =>
		location.replace 'https://plus.google.com/100168721734212748375'
		#console.log 'fobbiden'
	if $('#ideas') then $('#ideas').click =>
		drawList index
		drawIdeas()
	if $('#notes') then $('#notes').click =>
		drawList index
		drawNotes()
	if $('#doubles') then $('#double3').click =>
		drawList ideas
		drawDouble3()
	if $('#three16') then $('#three16').click =>
		drawList ideas
		drawThree16()
	if $('#initial') then $('#initial').click =>
		drawList notes
		drawInitial()
	if $('#untitled') then $('#untitled').click =>
		drawList notes
		drawUntitled()
drawIdeas = ->
	r.empty()
	r.append '<nav id="ideas1" class="x">
		<span>双平衡三进制</span> ...
		是我从一开始烦恼编程所关心的话题<br/>
		主要是进制与复数的转化, 还有是双三素数分布图, 再就是四则运算<br/>
		四则运算除法是最为头疼的事情, 我给的算法很有问题<br/>
		在我的github页面里头有相关的算法, 以后再说了
		</nav>'
	$('#ideas1').click =>
		drawList ideas
		drawDouble3()
	r.append '<nav id="ideas2" class="x">
		<span>三十六输入法</span> ...
		16键3拼带声调的拼音输入法方案, 其实挺好的<br/>
		自以为优于双拼, 甚至支持扫屏输入, 更适合移动设备的小型触摸屏幕<br/>
		没有办法只有自己做做图片捉弄捉弄人咯
		</nav>'
	$('#ideas2').click =>
		drawList ideas
		drawThree16()
drawNotes = ->
	r.empty()
	r.append '<nav class="x" id="notes1">
		<span>Initial</span> ... 关于最近写这个页面的事情(link)<br/>
		技术没长进, 日子过得不舒服啊, 我感觉身上继续在丢失东西<br/>
		希望有机会再学学Stylus, 可惜Stylus不是CCSS, 没辙<br/>
		困惑还是得自己去解, 遭遇吧, 不知到会有什么样的遭遇
		</nav>'
	$('#notes1').click =>
		drawList notes
		drawInitial()
	r.append '<nav class="x" id="notes2">
		<span>untitled</span> ... 还没想好些什么<br/>
		XUL box for nav element contained an inline #text child,<br/>
		forcing all its children to be wrapped in a block. <br/>
		这个waring是怎么回事啊, 调试的时候到处都是?
		</nav>'
	$('#notes2').click =>
		drawList notes
		drawUntitled()
drawDouble3 = ->
	r.empty()
	r.append '<img width="400px" src="http://img3.douban.com/view/photo/photo/public/p1195216902.jpg" href="http://img3.douban.com/view/photo/photo/public/p1195216902.jpg"/>'
	r.append '<img width="160px" src="http://img3.douban.com/view/photo/photo/public/p1195216885.jpg" href="http://img3.douban.com/view/photo/photo/public/p1195216885.jpg"/><br/>'
	r.append '<a href="http://baike.baidu.com/view/6134809.htm">双平衡三进制, 可以查看我放在百度百科介绍</a><br/>'
	r.append '<a href="https://github.com/jiyinyiyong/shuangsan">网页版计算略简, Python 实现在Github 可见</a><br/>'
	r.append '<textarea id="d3text1">324.33</textarea>'
	r.append '<textarea id="d3text2">3.356</textarea>'
	r.append '<button id="d3button1">算</buton>'
	r.append '</br>'
	r.append '<section id="d3text3">000</section>'
	$('#d3button1').click =>
		a = fplus $('#d3text1')[0].value.trim(), $('#d3text2')[0].value.trim()
		b = fmult $('#d3text1')[0].value.trim(), $('#d3text2')[0].value.trim()
		c = minus $('#d3text1')[0].value.trim(), $('#d3text2')[0].value.trim()
		$('#d3text3')[0].innerHTML = '和是:' + a + '<br/>积是:' + b + '<br/>商是:' + c
drawThree16 = ->
	r.empty()
	r.append 'three16 undone'
initial1 = [
	'这么多天终于捣鼓出来无穷巷概念的导航, 注意和已有方案不同哦'
	'点击最上的目录会跳出当前位置, 而其他目录则是载入新的内容'
	'不知到怎么的, 我用了position:relative在火狐不能用了, 难道和box冲突了?'
	'这些天的心态也真是糟糕地不得了了, 成天磨蹭不能专心学东西'
	'想到惨痛的人生虚度, 自己有不能节制各色欲念, 真是无聊到异常' ]
initial4 = [
	'就像街巷, 从外面看到其所想展示的, 从里面看到的是罗列的房间'
	'关于本页面的制作, 主要还是为了自己至少动手些几行代码, 效果不佳'
	'想不到shadow和duration如此耗CPU, 虽然好看, 只好去掉了'
	'我也发现如果自己学成数据库操作还有建站的话, 可以很方便'
	'目前的简单方案我自己都无语我话了这么久, 简单情形适用吧'
	'大部分都是手动绑定上去的, 调试在Ubuntu的Firefox和Chrome'
	'代码反正是gitPage很方便了, 我用上了Coffeescript, jQuery和Coffeekup'
	'还有Stylus的话我不会用, 打算, 因为编程体验相对之前很多了'
	'我也就这样, 不断失败, 不断认为自己在追求, 结果失败证明失败'
	'希望对于我的未来有益处吧. 评论请在微博, 指点就更好了.' ]
drawInitial = ->
	r.empty()
	for item in initial1
		r.append '<nav class="x">'+item+'</nav>'
	r.append '<nav class="x lin" id="initial2">最多可以看看在知乎(link)写的问题和描述, 算是心得体会和困惑吧</nav>'
	$('#initial2').click =>
		location.replace 'http://www.zhihu.com/people/jiyinyiyong'
	r.append '<nav class="x lin" id="initial3">回到本页面的主题, 关于无穷巷, 已有我的笔记(link)说明</nav>'
	$('#initial3').click =>
		location.replace 'http://jiyinyiyong.blog.163.com/blog/static/64699876201152124822536/'
	for item in initial4
		r.append '<nav class="x">'+item+'</nav>'
drawUntitled = ->
	r.empty()
	r.append 'untitled <br/> 那个.. 意思就是还没写'
$(document).ready ->
	drawList ideas
	drawDouble3 ''
