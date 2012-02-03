
o = console.log
elems =
	canvas:
		attr:
			id: "cvs"
			width: 729
			height: 729
		style:
			"box-shadow": "0px 0px 10px black"
			float: "left"
	nav:
		attr:
			id: "value"
			width: 200
		style:
			float: "left"
		text: "&"
($ "body").append (json2page elems)
