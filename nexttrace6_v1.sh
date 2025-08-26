#!/bin/sh
apt install wget -y
cp -f /etc/resolv.conf /etc/resolv.conf.bak
echo 'nameserver 2a00:1098:2b::1' > /etc/resolv.conf
NT_VERSION=$(curl https://api.github.com/repos/nxtrace/NTrace-V1/tags | grep name | awk -F\" '{print $4}' | head -n 1 | sed -e 's/v//g')
wget https://github.com/nxtrace/NTrace-V1/releases/download/v${NT_VERSION}/nexttrace_linux_amd64 -O /usr/local/bin/nexttrace
mv -f /etc/resolv.conf.bak /etc/resolv.conf
chmod +x /usr/local/bin/nexttrace
exit 0
