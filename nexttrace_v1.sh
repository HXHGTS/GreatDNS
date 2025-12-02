#!/bin/sh
apt install wget -y
NT_VERSION=$(curl https://api.github.com/repos/nxtrace/NTrace-core/releases | grep tag_name | head -n 1 | awk -F\" '{print $4}')
NT_URL=$(echo "https://dl-r2.nxtrace.org/dist/v1/${NT_VERSION}/nexttrace_linux_amd64")
wget ${NT_URL} -O /usr/local/bin/nexttrace
chmod +x /usr/local/bin/nexttrace
exit 0
