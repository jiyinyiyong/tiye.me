
cd `dirname $0`
echo '-- start watching'

jade -O . -wP src/*jade &
stylus -o page/ -w src/*styl &
doodle index.html page/ &

read

pkill -f jade
pkill -f stylus
pkill -f doodle

echo '-- stop watching'