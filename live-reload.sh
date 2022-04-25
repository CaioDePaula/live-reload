SERVICE=${1}
APPLICATION=${2}

${SERVICE} ${APPLICATION} &

while true; do 
    inotifywait -e modify,create,delete -r $(pwd -P) && echo "change detect reload application" && kill -HUP $(pidof $(ps aux | grep ${APPLICATION})) && (${SERVICE} ${APPLICATION}&)
done
