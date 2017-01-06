#!/bin/bash
cd "$( dirname "$0" )"
while true
do
    java -Xms2048m -Xmx2048m -XX:PermSize=128m -jar minecraft_server.1.9.4.jar nogui

    echo -e 'If you want to completely stop the server process now, press ctrl-C before the\ntime is up!'
    echo "Rebooting in:"
    for i in {5..1}
    do
        echo "$i..."
        sleep 1
    done
    echo 'Restarting now!'
done