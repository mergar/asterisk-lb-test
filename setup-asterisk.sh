#!/bin/sh
pkg update -f
pkg install -y asterisk22

if [ ! -d /usr/local/etc/asterisk ]; then
	echo "no such /usr/local/etc/asterisk/"
	exit 1
fi

service asterisk enable

cat <<EOF
 ADD CONF/OVERLAY per host:

cp asterisk-IP/ into /usr/local/etc/asterisk/

EOF

service asterisk start
