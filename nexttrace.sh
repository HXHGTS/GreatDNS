#!/bin/sh
apt install wget -y
wget https://github.com/nxtrace/NTrace-core/releases/latest/download/nexttrace_linux_amd64 -O /usr/local/bin/nexttrace
chmod +x /usr/local/bin/nexttrace
exit 0
