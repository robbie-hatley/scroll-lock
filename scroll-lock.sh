#!/usr/bin/bash
# "/usr/local/sbin/scroll-lock/scroll-lock.sh"
slk=$(printf '%s\n' /sys/class/leds/input*::scrolllock/brightness | head -n 1)
case "$1" in
    on)
        echo 1 > "$slk"
        ;;
    off)
        echo 0 > "$slk"
        ;;
esac
