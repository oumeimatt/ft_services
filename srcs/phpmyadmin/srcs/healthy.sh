#!/bin/sh
pgrep telegraf
t=$?
pgrep php-fpm7
p=$?
pgrep nginx
n=$?

if [ $t -ne 0 -o $p -ne 0 -o $n -ne 0 ];then
  exit 1
else
  exit 0
fi