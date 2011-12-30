
index = [
	'Index'
	'Gitpage'
	'Google'
	'Weibo'
	'Douban' ]
drawIndex = ->
	clear()
	draw index
	console.log $('#left').children()[0]
	console.log 'come'
	$('#right').empty()
	$('#right')[0].innerHTML = 'Index'
	@
bindIndex = ->
	$('#Index').click =>
		console.log 'jump'
		location.replace 'http://google.com'
	$('#Gitpage').click =>
		drawGitpage()
	$('#Google').click =>
		console.log 'google'
		location.replace 'http://plus.google.com'
	$('#Weibo').click =>
		location.replace 'http://weibo.com'
	$('#Douban').click =>
		location.replace 'http://douban.com'
	@
drawGitpage = ->
	clear()
	draw index
	bindIndex()
	$('#right').empty()
	$('#right')[0].innerHTML = 'Gitpage'
	@
bindGitpage = ->
	$('#Gitpage').click =>
		drawIndex()
		bindIndex()
	$('#Articles').click =>
		drawArticles()
		bindArticles()
	$('#Double3').click =>
		drawDouble3()
		bindDouble3()
	$('#Three16').click =>
		drawThree16()
		bindThree16()
	$('#Ideas').click =>
		drawIdeas()
		bindIdeas()
	$('#About').click =>
		drawAbout()
		bindAbout()
drawGoogle = ->
	$('#right').empty()
	$('#right')[0].innerHTML = 'Google'
	@
drawWeibo = ->
	$('#right').empty()
	$('#right')[0].innerHTML = 'Weibo'
	@
drawDouban = ->
	$('#right').empty()
	$('#right')[0].innerHTML = 'Douban'
	@

gitpage = [
	'Gitpage'
	'Articles'
	'Double3'
	'Three16'
	'Ideas'
	'About' ]
drawArticles = ->
	clear()
	drawGitpage()
	$('#right').empty()
	$('#right')[0].innerHTML = 'Articles'
	@
drawDouble3 = ->
	clear()
	drawGitpage()
	$('#right').empty()
	$('#right')[0].innerHTML = 'Double3'
	@
drawThree16 = ->
	clear()
	drawGitpage()
	$('#right').empty()
	$('#right')[0].innerHTML = 'Three16'
	@
drawIdeas = ->
	clear()
	drawGitpage()
	$('#right').empty()
	$('#right')[0].innerHTML = 'Ideas'
	@
drawAbout = ->
	clear()
	console.log 'here'
	draw gitpage
	bindGitpage()
	$('#right').empty()
	$('#right')[0].innerHTML = 'About'
	@
bindAbout = ->
	$('#Page').click =>
		drawPage()
		bindPage()
	$('#Me').click =>
		drawMe()
		drawMe()
	@

articles = [
	'Articles'
	'Crouded Place' ]
drawCrouded = ->
	$('#right').empty()
	$('#right')[0].innerHTML = 'Crouded'
	@
double3 = [
	'Double3'
	'Calculater'
	'Translater' ]
drawCalculater= ->
	$('#right').empty()
	$('#right')[0].innerHTML = 'Calculater'
	@
drawTranslater = ->
	$('#right').empty()
	$('#right')[0].innerHTML = 'Translater'
	@

three16 = [
	'Three16'
	'Idea'
	'Pics' ]
drawIdea = ->
	$('#right').empty()
	$('#right')[0].innerHTML = 'Idea'
	@
drawPics = ->
	$('#right').empty()
	$('#right')[0].innerHTML = 'Pics'
	@

ideas = [
	'Ideas'
	'Magic Streets'
	'Goose Lake' ]
drawMagic = ->
	$('#right').empty()
	$('#right')[0].innerHTML = 'Magic Street'
	@
drawGoose = ->
	$('#right').empty()
	$('#right')[0].innerHTML = 'Goose Lake'
	@

about = [
	'About'
	'Me'
	'Page' ]
drawMe = ->
	$('#right').empty()
	$('#right')[0].innerHTML = 'Me'
	@
drawPage = ->
	$('#right').empty()
	$('#right')[0].innerHTML = 'Page'
	@

draw = (ls) ->
	for item in ls
		$('#left').append '<section id='+item+'>' + item + '</section>'
	@

clear = ->
	$('#left').empty()
	@

$(document).ready ->
	drawAbout()
