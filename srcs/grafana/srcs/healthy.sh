#!/bin/sh
pgrep telegraf
t=$?
pgrep grafana
g=$?

if [ $t -ne 0 -o $g -ne 0 ];then
  exit 1
else
  exit 0
fi