#!/bin/bash

CPU_LIMIT_PRECENT=10

command -v cpulimit >/dev/null || echo "Please install cpulimit."
command -v cpulimit >/dev/null || exit 1

nohup cpulimit -l $CPU_LIMIT_PRECENT -- bash -c "while :;do a=1;done" >/dev/null 2>/dev/null

echo "Doing something with ${CPU_LIMIT_PRECENT}% CPU limit..."