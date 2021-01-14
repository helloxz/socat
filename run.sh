#!/bin/sh
socat -t 1 TCP-LISTEN:9999,reuseaddr,fork,su=nobody TCP:${DIP}:$DPORT