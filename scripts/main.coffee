
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
		#location.replace 'https://plus.google.com/100168721734212748375'
		console.log 'fobbiden'
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
	r.append 'double3 undone'
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
	drawList notes
	drawInitial()
