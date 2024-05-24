#!/bin/bash
set -e
echo "Mounting tmpfs volume of size: ${TMPFS_SIZE}m"
mount -t tmpfs -o size=${TMPFS_SIZE} tmpfs /data/db

ulimit -f unlimited
ulimit -t unlimited
ulimit -v unlimited
ulimit -n 524288
ulimit -m unlimited
ulimit -u 524288

exec "$@"