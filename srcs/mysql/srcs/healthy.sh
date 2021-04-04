#!/bin/sh
pgrep telegraf
t=$?
pgrep mysql
m=$?

if [ $t -ne 0 -o $m -ne 0 ];then
  exit 1
else
  exit 0
fi