
o = console.log
class Trinary
	len: 81
	center: 0
	zero: []
	constructor: (@leng) ->
		@len = @leng
		for i in [0..@len-1]
			@zero.push '5'
		@center = (@len - 1) / 2
	equal: (array_1, array_2) ->
		len_1 = array_1.length
		len_2 = array_2.length
		unless len_1 is len_2
			return false
		else
			for i in [0..len_1-1]
				unless array_1[i] is array_2[i]
					return false
			return true
	core: (char_1, char_2) ->
		pair = char_1 + char_2
		switch pair
			when '11' then '19'
			when '15' then '51'
			when '19' then '55'
			when '51' then '51'
			when '55' then '55'
			when '59' then '59'
			when '91' then '55'
			when '95' then '59'
			when '99' then '91'
			else "core error"
	plus: (array_1, array_2) ->
		array_3 = @zero.concat()
		array_4 = @zero.concat()
		until @equal array_2, @zero
			for i in [@len-1..0]
				pair = @core array_1[i], array_2[i]
				unless pair[1] is "5"
					array_3[i] = pair[1]
				unless pair[0] is "5"
					if i>0 then array_4[i-1] = pair[0]
					# else o "加法溢出"
			array_1 = array_3.concat()
			array_2 = array_4.concat()
			array_3 = @zero.concat()
			array_4 = @zero.concat()
		return array_1
	reverse: (char) ->
		switch char
			when "1" then "9"
			when "5" then "5"
			when "9" then "1"
	minus: (array_1, array_2) ->
		array_2 = array_2.map @reverse
		return @plus array_1, array_2
	multiply: (array_1, array_2) ->
		array_3 = @zero.concat()
		array_4 = @zero.concat()
		for i in [@len-1..0]
			if array_1[i] is "5" then continue
			else if array_1[i] is "1" then array_5 = array_2.concat()
			else array_5 = array_2.map @reverse
			array_4 = @zero.concat()
			for j in [@len-1..0]
				point = (i - @center) + (j - @center) + @center
				if 0 <= point <= @len-1
					array_4[point] = array_5[j]
			array_3 = @plus array_3, array_4
		return array_3
	abs: (array_1) ->
		for i in array_1
			if i is "5" then continue
			else if i is "1" then return array_1
			else if i is "9" then return array_1.map @reverse
		return array_1
	char_smaller: (char_1, char_2) ->
		# o 'chars: ', char_1, char_2
		if char_1 is "1" then return false
		else if char_1 is "5"
			if char_2 is "1" then return true
			else if char_2 is "9" then return false
		else if char_1 is "9"
			if char_2 is "9" then return false
			else return true
		else return "error chars"
	smaller: (array_1, array_2) ->
		# o "compare: ", array_1, array_2
		array_1 = @abs array_1
		array_2 = @abs array_2
		for i in [0..@len-1]
			# o "loop at: ", i
			if @char_smaller array_1[i], array_2[i]
				# o "compare true", array_1[i], array_2[i]
				return true
			if @char_smaller array_2[i], array_1[i] then return false
		# o "not decided"
		return false
	divide: (array_1, array_2) ->
		if @equal array_1, @zero then return @zero
		if @equal array_2, @zero
			o "Divide 0.."
			return "0 error"
		# o "start divide"
		array_3 = @zero.concat()
		array_4 = @zero.concat()
		count_5_head = (array_1) ->
			n = 0
			for i in array_1
				if i is "5" then n += 1
				else return n
			return n
		head_5s_1 = count_5_head array_1
		head_5s_2 = count_5_head array_2
		# o "5s of array_1: ", head_5s_1, " -> ", array_1
		# o "5s of array_2: ", head_5s_2, " -> ", array_2
		range_0 = @center + (head_5s_1 - @center) - (head_5s_2 - @center)
		unless 0 < range_0 <= @len-1
			o "too far away!"
			return "error to divide"
		range_0 -= 1
		# o "made range_0"
		for i in [range_0..@len-1]
			# o "loop i=", i
			if @equal array_1, @zero then return array_4
			for j in [0..@len-1]
				point = (j - (@center - i))
				if 0 <= point <= @len-1
					array_3[point] = array_2[j]
			# o "array_3: ", array_3.join ' '
			n = "5"
			# o "array_1: ", array_1.join ' '
			chosen = array_1
			choice = @minus array_1, array_3
			# o "choice1: ", choice.join ' '
			if @smaller choice, chosen
				n = "1"
				chosen = choice.concat()
				# o 'choice1 smaller'
			choice = @plus array_1, array_3
			# o "choice2: ", choice.join ' '
			if @smaller choice, chosen
				n = "9"
				chosen = choice.concat()
				# o "choice2 smaller"
			# o "chosen:  ", chosen.join ' '
			array_1 = chosen.concat()
			array_3 = @zero.concat()
			array_4[i] = n
			# o "array_4: ", array_4.join ' '
		# o "got array_4=", array_4
		return array_4
	to_string: (array_1) ->
		string = ""
		for i in [0..@len-1]
			string += array_1[i]
			if i is @center
				string += "&"
		while string[0] is "5"
			string = string[1..]
		while string[string.length-1] is "5"
			string = string[..(-2)]
		return string
	from_string: (string) ->
		array_1 = @zero.concat()
		regex = string.match /^([1-9]*)&([1-9]*)$/
		unless regex
			o "--"+string+'--', regex
			o "wrong string"
			return "error"
		else
			# o regex
			before = regex[1]
			after = regex[2]
			if before.length > @center + 1
				o 'before: ', before, before.length, @center
				o "too long"
				return "error"
			if after.length > @center
				o "too long"
				return	"error"
			if before.length > 0
				for i in [0..before.length-1]
					point = @center - (before.length - i) + 1
					array_1[point] = before[i]
			if after.length > 0
				for i in [0..after.length-1]
					# o 'fater: ', i
					point = @center + (i + 1)
					# o point
					array_1[point] = after[i]
			return array_1
	trinary_plus: (string_1, string_2) ->
		array_1 = @from_string string_1
		array_2 = @from_string string_2
		array_3 = @plus array_1, array_2
		string_3 = @to_string array_3
		return string_3
	trinary_multiply: (string_1, string_2) ->
		array_1 = @from_string string_1
		array_2 = @from_string string_2
		array_3 = @multiply array_1, array_2
		string_3 = @to_string array_3
	trinary_divide: (string_1, string_2) ->
		array_1 = @from_string string_1
		array_2 = @from_string string_2
		array_3 = @divide array_1, array_2
		string_3 = @to_string array_3
	trinary_minus: (string_1, string_2) ->
		array_1 = @from_string string_1
		array_2 = @from_string string_2
		array_3 = @minus array_1, array_2
		string_3 = @to_string array_3
	map_luo:
		"1": ["1", "5"]
		"2": ["9", "9"]
		"3": ["5", "1"]
		"4": ["9", "1"]
		"5": ["5", "5"]
		"6": ["1", "9"]
		"7": ["5", "9"]
		"8": ["1", "1"]
		"9": ["9", "5"]
		"15": "1"
		"99": "2"
		"51": "3"
		"91": "4"
		"55": "5"
		"19": "6"
		"59": "7"
		"11": "8"
		"95": "9"
	luo_array_complex: (array_1) ->
		array_2 = @zero.concat()
		array_3 = @zero.concat()
		for i in [0..@len-1]
			cplx = @map_luo[array_1[i]]
			array_2[i] = cplx[0]
			array_3[i] = cplx[1]
		pair = [array_2, array_3]
		return pair
	complex_array_luo: (pair) ->
		array_1 = pair[0]
		array_2 = pair[1]
		array_3 = @zero.concat()
		for i in [0..@len-1]
			array_3[i] = @map_luo[array_1[i]+''+array_2[i]]
		return array_3
	complex_array_plus: (pair_1, pair_2) ->
		pair_3 = []
		pair_3.push @plus pair_1[0], pair_2[0]
		pair_3.push @plus pair_1[1], pair_2[1]
		return pair_3
	complex_array_minus: (pair_1, pair_2) ->
		pair_3 = []
		pair_3.push @minus pair_1[0], pair_2[0]
		pair_3.push @minus pair_1[1], pair_2[1]
		return pair_3
	complex_array_multiply: (pair_1, pair_2) ->
		pair_3 = []
		part_1 = @multiply pair_1[0], pair_2[0]
		part_2 = @multiply pair_1[1], pair_2[1]
		pair_3.push @minus part_1, part_2
		part_3 = @multiply pair_1[0], pair_2[1]
		part_4 = @multiply pair_1[1], pair_2[0]
		pair_3.push @plus part_3, part_4
		return pair_3
	complex_array_divide: (pair_1, pair_2) ->
		pair_3 = pair_2.concat()
		pair_3[1] = pair_3[1].map @reverse
		pair_4 = @complex_array_multiply pair_2, pair_3
		part_1 = pair_4[0]
		pair_5 = @complex_array_multiply pair_1, pair_3
		# o pair_5[0].join ' '
		# o pair_5[1].join ' '
		pair_5[0] = @divide pair_5[0], part_1
		pair_5[1] = @divide pair_5[1], part_1
		return pair_5
	luo_method: (string_1, string_2, string_3) ->
		array_1 = @from_string string_1
		pair_1 = @luo_array_complex array_1
		array_2 = @from_string string_2
		pair_2 = @luo_array_complex array_2
		if string_3 is "plus"
			pair_3 = @complex_array_plus pair_1, pair_2
		else if string_3 is "minus"
			pair_3 = @complex_array_minus pair_1, pair_2
		else if string_3 is "multiply"
			pair_3 = @complex_array_multiply pair_1, pair_2
		else
			pair_3 = @complex_array_divide pair_1, pair_2
		array_3 = @complex_array_luo pair_3
		string_3 = @to_string array_3
		return string_3
	luo_plus: (string_1, string_2) ->
		return @luo_method string_1, string_2, "plus"
	luo_minus: (string_1, string_2) ->
		return @luo_method string_1, string_2, "minus"
	luo_multiply: (string_1, string_2) ->
		return @luo_method string_1, string_2, "multiply"
	luo_divide: (string_1, string_2) ->
		return @luo_method string_1, string_2, "divide"
	luo_pow: (string, num) ->
		array_1 = @from_string string
		array_2 = @from_string "1&"
		unless (Math.floor num) is num and num > 1
			o "Dont use luo_pow like this..."
		else
			for i in [1..num]
				array_2 = @multiply array_2, array_1
		return @to_string array_2
	to_decimal: (array_1) ->
		sum = 0
		base = Math.pow 3, @center
		for i in array_1
			if i is "1" then sum += base
			else if i is "9" then sum -= base
			base /= 3
		return sum
	number:
		"0": "&"
		"1": "1&"
		"2": "19&"
		"3": "15&"
		"4": "11&"
		"5": "199&"
		"6": "195&"
		"7": "191&"
		"8": "159&"
		"9": "155&"
		"10": "151&" 
	from_decimal: (num) ->
		unless typeof num is "number"
			return "type error!"
		deci = @divide (@from_string "1&"), (@from_string "151&")
		# o "dd"
		integer = Math.floor num
		ten = @from_string "151&"
		decimal = num - integer
		negative = false
		if integer < 0
			integer = -integer
			negative = true
		sum = @from_string "&"
		unless integer is 0
			length = (''+num).length
			base = @from_string "1&"
			while integer >= 1
				# o integer
				d = integer % 10
				char = @from_string @number[''+d]
				space = @multiply char, base
				sum = @plus sum, space
				base = @multiply base, ten
				integer = (integer - d) / 10
		if negative then sum = sum.map @reverse
		base = @from_string "1&"
		regex = ('' + num).match /\.([1-9]+)$/
		if regex
			decimal = regex[1]
			for i in [0..decimal.length-1]
				base = @multiply base, deci
				# o @to_string base
				d = decimal[i]
				unless d is "0"
					char = @from_string @number[d]
					space = @multiply char, base
					sum = @plus space, sum
		return sum
	luo2xoy: (string) ->
		point =
			x: 0
			y: 0
		array = @luo_array_complex (@from_string string)
		point.x = @to_decimal array[0]
		point.y = @to_decimal array[1]
		return point
	xoy2luo: (x, y) ->
		array_1 = @from_decimal x
		array_2 = @from_decimal y
		pair = [array_1, array_2]
		point = @complex_array_luo pair
		# o point
		point = @to_string point
		return point
# cal = new Trinary 27
# o cal.luo_multiply "3423444&78678678", "3455&678678"
# o cal.luo_divide "96111225584&78684136882127", "3455&678678"
# o cal.to_decimal (cal.from_string "19&")
# a = cal.from_decimal 1.9999
# o cal.to_string a
# b = cal.to_decimal (cal.from_string "15&")
# o b
# o cal.luo2xoy "352452446456&"
# o cal.xoy2luo -27278, 163601
# o cal.luo_pow "11&11", 2