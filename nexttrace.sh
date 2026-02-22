#!/bin/sh
apt install wget -y
NT_VERSION=$(curl https://api.github.com/repos/nxtrace/NTrace-core/releases | grep tag_name | head -n 1 | awk -F\" '{print $4}')
NT_URL=$(echo "https://dl-r2.nxtrace.org/dist/core/${NT_VERSION}/nexttrace_linux_amd64")
curl -O /usr/local/bin/nexttrace -A 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36' ${NT_URL} 
chmod +x /usr/local/bin/nexttrace
exit 0
