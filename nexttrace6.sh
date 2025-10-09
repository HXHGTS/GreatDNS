#!/bin/sh
apt install wget -y
#echo 'nameserver 2a00:1098:2b::1' > /etc/resolv.conf
mv -f /etc/hosts /etc/hosts.bak
echo '2a00:1098:2b::1:141a:9cd2 api.github.com' > /etc/hosts
echo '2a00:1098:2b::1:141a:9cd7 github.com' >> /etc/hosts
NT_URL=$(curl https://api.github.com/repos/nxtrace/NTrace-core/releases | grep browser_download_url | grep nexttrace_linux_amd64 | head -n 1 | awk -F\" '{print $4}')
wget ${NT_URL} -O /usr/local/bin/nexttrace
mv -f /etc/hosts.bak /etc/hosts
chmod +x /usr/local/bin/nexttrace
exit 0
