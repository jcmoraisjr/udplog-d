#!/bin/sh
port=${1:-1514}
echo "$port" | egrep -q '^[0-9]+$' || exec "$@"
echo "Listening :$port (udp)"
exec socat -t0 -T0 -u udp4-listen:${port},reuseaddr,fork -
