#!/bin/bash

pipe=/home/videeotic/pipe

if [[ ! -p $pipe ]]; then
    mkfifo $pipe
fi

echo '----'
omxplayer -b "$1" < /home/videeotic/fifo
echo '----'
