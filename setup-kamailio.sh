#!/bin/sh
pkg update -f
pkg install -y kamailio

sysrc kamailio_enable="YES"

# Проверяем синтаксис конфигурационного файла по умолчанию
kamailio -c -f /usr/local/etc/kamailio/kamailio.cfg

# Запускаем службу
#service kamailio start