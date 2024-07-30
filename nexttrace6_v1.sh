#!/bin/sh
apt install wget -y
cp -f /etc/resolv.conf /etc/resolv.conf.bak
echo 'nameserver 2a00:1098:2b::1' > /etc/resolv.conf
wget https://github.com/nxtrace/Ntrace-V1/releases/latest/download/nexttrace_linux_amd64 -O /usr/local/bin/nexttrace
mv -f /etc/resolv.conf.bak /etc/resolv.conf
chmod +x /usr/local/bin/nexttrace
exit 0
