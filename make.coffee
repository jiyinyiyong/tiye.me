
require 'shelljs/make'

target.dev = ->
  exec 'coffee -o src/ -wbc coffee/', async: yes
  exec 'watchify -o build/build.js -d src/main.js -v', async: yes
  exec 'jade -o ./ -wP page/index.jade', async: yes
  exec 'pkill -f doodle', ->
    exec 'doodle index.html build log:yes', async: yes