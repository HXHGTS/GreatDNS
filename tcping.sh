#!/bin/sh

TCPING_URL=$(curl -L https://api.github.com/repos/nodeseeker/tcping/releases | grep 'browser_download_url'  | grep 'tcping-linux-amd64.zip' |  head -n 1 | awk -F\" {'print $4'})

echo 正在下载tcping. . .

apt update

apt install -y wget unzip

wget -O /var/tmp/tcping-linux-amd64.zip ${TCPING_URL}

echo 正在解压并安装tcping. . .

unzip -o -d /var/tmp/tcping-linux-amd64 /var/tmp/tcping-linux-amd64.zip

rm -f /var/tmp/tcping-linux-amd64.zip

mv -f /var/tmp/tcping-linux-amd64/tcping /usr/local/bin

echo tcping安装完成!

exit
