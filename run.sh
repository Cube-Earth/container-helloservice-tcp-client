#!/bin/sh
a=$1
p=${a/*:/}
h=${a/:*/}
[[ -z "$h" ]] && h=`ip route | awk '/default/ { print $3 }'`
[[ "$h" = "$p" ]] && p="3333"

echo "host: $h, port: $p"
nc "$h" "$p" < /dev/null
