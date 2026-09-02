#!/usr/bin/bash
# Copy this file to "/usr/local/sbin/scroll-lock/scroll-lock.sh"
# Set ownership to "root:root".
# Set permissions to "0755".
slk=$(printf '%s\n' /sys/class/leds/input*::scrolllock/brightness | head -n 1)
case "$1" in
    on)
        echo 1 > "$slk"
        ;;
    off)
        echo 0 > "$slk"
        ;;
esac
