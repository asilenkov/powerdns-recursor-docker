#!/bin/sh
set -e

# treat everything except -- as exec cmd
[ "${1:0:2}" != "--" ] && exec "$@"

pdns_recursor "$@" &

wait
