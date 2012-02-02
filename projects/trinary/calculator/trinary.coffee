
o = console.log
class Trinary
	len: 9
	center: 0
	zero: []
	constructor: ->
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
					else o "加法溢出"
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
			unless char_2 is "9" then return false
			else return true
		else return "error chars"
	smaller: (array_1, array_2) ->
		# o "compare: ", array_1, array_2
		array_1 = @abs array_1
		array_2 = @abs array_2
		for i in [0..@len-1]
			# o "loop at: ", i
			if @char_smaller array_1[i], array_2[i] then return true
			else if @char_smaller array_2[i], array_1[i] then return false
		# o "not decided"
		return false
	divide: (array_1, array_2) ->
		if @equal array_2, @zero
			o "Divide 0.."
			return "0 error"
		o "start divide"
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
		range_0 = @center + (head_5s_1 - @center) - (head_5s_2 - @center)
		unless 0 < range_0 <= @len-1
			o "too far away!"
			return "error to divide"
		range_0 -= 1
		o "made range_0"
		for i in [range_0..@len-1]
			# o "loop i=", i
			if @equal array_1, @zero then return array_4
			for j in [0..@len-1]
				point = (j - (@center - i))
				if 0 <= point <= @len-1
					array_3[point] = array_2[j]
			o "got array_3=", array_3
			n = "5"
			chosen = array_1
			choice = @minus array_1, array_3
			# o "fst choice: ", chosen
			if @smaller choice, chosen
				n = "1"
				chosen = choice.concat()
			choice = @minus array_1, (array_3.map @reverse)
			# o "snd choice: ", choice
			if @smaller choice, chosen
				n = "9"
				chosen = choice.concat()
			# o "got chosen: ", chosen
			array_1 = chosen.concat()
			array_3 = @zero.concat()
			array_4[i] = n
			# o "got array_4=", array_4
		o "got array_4=", array_4
		return array_4
calculator = new Trinary()
a = ["5", "5", "5", "1", "9", "5", "5", "5", "5"]
b = ["5", "5", "5", "5", "5", "5", "5", "5", "5"]
c = calculator.divide a, b
o "c: ", c