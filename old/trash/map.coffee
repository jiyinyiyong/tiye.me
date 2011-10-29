
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
	console.log '核心计算结果:', a
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
	console.log 'in print:' + ls[0] + ls[1]
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
	console.log '乘法核心部分开始', ls
	a = reverse ls[0]
	b = reverse ls[1]
	console.log '此时的a, b:', a, b
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
	console.log 'a,b,c,d:', ls
	out = core_mult ls
	out = [(out.slice 0, left+1), (out.slice left+1)]
	out = print out
	console.log 'end:', out
	out
# 测试乘法
fmult('123456789', '123456789')
# 数字去关于10 的相反
oppo = (c) ->
	(10 - Number c).toString 10
# 减法用的是相反数
minus = (a, b) ->
	out = ''
	console.log 'b:', b
	out += oppo x for x in b
	console.log 'out'
	console.log 'fplus:', a, out
	fplus a, out
console.log 'minus:', minus '24', '24'
