#!/bin/bash

CPU_LIMIT_PRECENT=10

command -v cpulimit >/dev/null || echo "Please install cpulimit."
command -v cpulimit >/dev/null || exit 1
echo "scale=99999999;4*a(1)" | bc -lq > /dev/null 2>/dev/null &
PID=$!
cpulimit -l $CPU_LIMIT_PRECENT -p $PID > /dev/null 2>/dev/null &
echo "Calculating pi with ${CPU_LIMIT_PRECENT}% CPU limit..."
echo "The PID is $PID"