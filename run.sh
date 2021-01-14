#!/bin/sh
socat -t 2 TCP-LISTEN:9999,reuseaddr,fork,su=nobody TCP:${DIP}:$DPORT