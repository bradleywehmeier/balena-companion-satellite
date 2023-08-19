#!/bin/sh
set -e

if [ "$1" = 'companion-satellite' ]; then
    exec node ./dist/main.js "$COMPANION_IP" "${COMPANION_PORT:-16622}" "$REST_PORT"
fi

exec "$@"
