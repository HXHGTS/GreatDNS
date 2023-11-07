#!/bin/sh

apt install -y wget

wget -O /etc/rc.local https://raw.githubusercontent.com/HXHGTS/GreatDNS/master/rc.local

chmod +x /etc/rc.local

systemctl daemon-reload

systemctl enable --now rc-local

exit 0
