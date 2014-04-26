
project = 'repo/tiye.me'
interval = interval: 300
watch = no

require 'shelljs/make'
fs = require 'fs'
station = require 'devtools-reloader-station'
browserify = require 'browserify'
{renderer} = require 'cirru-html'

startTime = (new Date).getTime()
process.on 'exit', ->
  now = (new Date).getTime()
  duration = (now - startTime) / 1000
  console.log "\nfinished in #{duration}s"

reload = -> station.reload project if watch
 
compileCoffee = (name, callback) ->
  exec "coffee -o js/ -bc coffee/#{name}", ->
    console.log "done: coffee, compiled coffee/#{name}"
    do callback
 
packJS = ->
  b = browserify ['./js/main']
  build = fs.createWriteStream 'build/build.js', 'utf8'
  bundle = b.bundle(debug: yes)
  bundle.pipe build
  bundle.on 'end', ->
    console.log 'done: browserify'
    do reload
 
target.folder = ->
  mkdir '-p', 'cirru', 'coffee', 'js', 'build', 'css'
  exec 'touch cirru/index.cirru css/style.css'
  exec 'touch coffee/main.coffee'
  exec 'touch README.md .gitignore .npmignore'
 
target.cirru = ->
  file = 'cirru/index.cirru'
  render = renderer (cat file), '@filename': file
  html = render()
  fs.writeFile 'index.html', html, 'utf8', (err) ->
    console.log 'done: cirru'
    do reload

target.js = ->
  exec 'coffee -o js/ -bc coffee/'
 
target.compile = ->
  target.cirru()
  exec 'coffee -o js/ -bc coffee/', ->
    packJS()
 
target.watch = ->
  watch = yes
  fs.watch 'cirru/', interval, target.cirru
  fs.watch 'coffee/', interval, (type, name) ->
    if type is 'change'
      compileCoffee name, ->
        do packJS
  
  station.start()
