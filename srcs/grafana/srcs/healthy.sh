#!/bin/sh
pgrep telegraf
t=$?

if [ $t -ne 0 ];then
  exit 1
else
  exit 0
fi