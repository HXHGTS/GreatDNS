#!/bin/sh
#echo 'nameserver 2a00:1098:2b::1' > /etc/resolv.conf
mv -f /etc/hosts /etc/hosts.bak
echo '2a00:1098:2b::1:141a:9cd2 api.github.com' > /etc/hosts
# echo '2a00:1098:2b::1:141a:9cd7 github.com' >> /etc/hosts
# echo '2a00:1098:2b::1:b9c7:6c85 release-assets.githubusercontent.com' >> /etc/hosts
# NT_URL=$(curl https://api.github.com/repos/nxtrace/NTrace-core/releases | grep browser_download_url | grep nexttrace_linux_amd64 | head -n 1 | awk -F\" '{print $4}')
NT_VERSION=$(curl https://api.github.com/repos/nxtrace/NTrace-core/releases | grep tag_name | head -n 1 | awk -F\" '{print $4}')
NT_URL=$(echo "https://dl-r2.nxtrace.org/dist/core/${NT_VERSION}/nexttrace_linux_amd64")
curl -o /usr/local/bin/nexttrace -A 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36' ${NT_URL} 
mv -f /etc/hosts.bak /etc/hosts
chmod +x /usr/local/bin/nexttrace
exit 0
