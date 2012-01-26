
j2p = (require './json2Page').json2Page
a =
	'html':
		'head':
			'meta':
				'attr':
					'charset': 'utf-8'
			'css':
				'body':
					'background': 'hsl(0,94%,94%)'
					'padding': '52px 130px'
					'font-size': '13px'
					'line-height': '26px'
			'title': 'test page'
		'body':
			'p': 'Testing'
console.log (j2p a)
