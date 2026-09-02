#!/usr/bin/bash
pidfile=/usr/local/sbin/scroll-lock/process.pid
if [[ -f "$pidfile" ]]; then
    # Process IS running, so turn scroll-lock "off", kill process, and remove process-id file:
    sudo /usr/local/sbin/scroll-lock/scroll-lock.sh off
    pid=$(cat "$pidfile")
    kill "$pid" 2>/dev/null
    rm -f "$pidfile"
else
    # Process is NOT running, so turn scroll-lock "on", launch process, and create process-id file:
    sudo /usr/local/sbin/scroll-lock/scroll-lock.sh on
    aleatoric.pl &
    echo $! > "$pidfile"
fi
