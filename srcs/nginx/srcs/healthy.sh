#!/bin/sh
pgrep nginx 
n=$?
pgrep sshd
s=$?
pgrep telegraf
t=$?

if [ $n -ne 0 -o $s -ne 0 -o $t -ne 0 ];then
  exit 1
else
  exit 0
fi