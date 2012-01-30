
editor = (box) ->
	box.onkeydown = (event) ->
		start_p = box.selectionStart
		end_p = box.selectionEnd
		c = box.value
		if event.keyCode is 9
			#event.preventDefault()
			unless event.ctrlKey
				if start_p is end_p
					p = start_p
					if event.shiftKey
						if c[p-1] is '\t'
							box.value = c[..p-2] + c[p..]
							box.setSelectionRange p-1, p-1
					else
						if c[p-1] is '\n' and p isnt c.length
							last_line = c[..p-2].lastIndexOf '\n'
							indent = c[last_line..p-2].match /^\n\t*/
							indents = indent[0][1..]
							box.value = c[..p-1] + indents + c[p..]
							new_p = p + indents.length
							box.setSelectionRange new_p, new_p
						else
							box.value = c[..p-1] + '\t' + c[p..]
							box.setSelectionRange p+1, p+1
				else
					last_line = c[..start_p-1].lastIndexOf '\n'
					if last_line >= 0 then start_p = last_line
					if event.shiftKey
						front = if start_p > 0 then c[0..start_p-1] else ''
						between = c[start_p..end_p-1].replace /\n\t/g, '\n'
						behind = c[end_p..]
						if start_p is 0
							if between[0] is '\t'
								between = between[1..]
						box.value = front + between + behind
					else
						front = if start_p > 0 then c[0..start_p-1] else ''
						between = c[start_p..end_p-1].replace /\n/g, '\n\t'
						behind = c[end_p..]
						addtion = if start_p is 0 then '\t' else ''
						box.value = addtion + front + between + behind
				return false
		else if event.keyCode is 13
			unless event.ctrlKey or start_p is 0
				if start_p is end_p
					p = start_p
					unless event.shiftKey
						last_n = c[0..p-1].lastIndexOf '\n'
						if last_n is -1
							if p > 0
								line = c[..p-1]
							else
								line = ''
						else
							line = c[last_n..p-1]
						indent = line.match /\t+/
						indents = if indent then indent[0] else ''
						behind = if c.length is p then '' else c[p..] 
						box.value = c[..p-1] + '\n' + indents + behind
						new_p = p + indents.length + 1
						box.setSelectionRange new_p, new_p
					else
						indent = c[..p-1].match /\n\t+$/
						if indent
							tab_length = indent[0].length
							front = c[..(p - 1 - tab_length)]
							behind = c[p..]
							box.value = front + behind
							new_p = p - tab_length
							box.setSelectionRange new_p, new_p
					return false
		else if event.keyCode is 8
			if start_p is end_p
				p = start_p
				if c[p-1] is '\n'
					before = c[..p-2]
					tab_only = before.match /\n\t+$/
					front = c[..p-1]
					behind = c[p..]
					if tab_only
						tab_length = tab_only[0].length - 1
						front = front[..(-2 - tab_length)]
						box.value = front + behind
						new_p = p - tab_length - 1
						box.setSelectionRange new_p, new_p
						return false
window.onload = ->
	box = (document.getElementsByTagName 'textarea')[0]
	editor box
	@
