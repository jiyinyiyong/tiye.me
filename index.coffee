
doctype 5
html ->
	head ->
		title 'Jiyinyiyong'
		link rel:'stylesheet', href: 'scripts/main.css'
		#link rel:'stylesheet', type: 'text/css', href: 'http://www.google.com/webfonts/specimen/Ubuntu'
		script src: 'scripts/coffee-script.js'
		script src: 'scripts/jquery.js'
		coffeescript src: 'scripts/main.coffee'
		#script src: 'scripts/main.js'
	body ->
		nav ->
			section id:'left'
			section id:'right'
