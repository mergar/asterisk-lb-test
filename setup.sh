#!/bin/sh
pkg update -f
pkt install -y asterisk22

add/overlay server-conf/ into /usr/local/etc/asterisk/

service asterisk enable
service asterisk start
