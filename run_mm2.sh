#!/bin/bash
source userpass
stdbuf -oL ./mm2 > mm2.log 2>&1 &
sleep 3
curl --url "http://127.0.0.1:7783" --data "{\"method\":\"version\",\"userpass\":\"$userpass\"}"
tail -f mm2.log