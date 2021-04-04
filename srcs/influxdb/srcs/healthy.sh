#!/bin/sh
pgrep telegraf
t=$?
pgrep influxd
i=$?

if [ $t -ne 0 -o $i -ne 0 ];then
  exit 1
else
  exit 0
fi