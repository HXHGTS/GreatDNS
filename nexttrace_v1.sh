#!/bin/sh
apt install wget -y
NT_URL=$(curl https://api.github.com/repos/nxtrace/NTrace-V1/releases | grep browser_download_url | grep nexttrace_linux_amd64 | head -n 1 | awk -F\" '{print $4}')
wget ${NT_URL} -O /usr/local/bin/nexttrace
chmod +x /usr/local/bin/nexttrace
exit 0
