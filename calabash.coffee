
require('calabash').run [
  'pkill -f doodle'
  'jade -o ./ -wP layout/index.jade'
  'jade -o ./ -wP layout/404.jade'
  'doodle index.html 404.html'
]