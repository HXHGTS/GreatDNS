#!/bin/sh

echo 正在下载tcping. . .

wget -O /opt/tcping-linux-amd64-v0.1.1.tar.gz https://github.com/cloverstd/tcping/releases/download/v0.1.1/tcping-linux-amd64-v0.1.1.tar.gz

echo 正在解压并安装tcping. . .

cd /opt

tar -zvxf tcping-linux-amd64-v0.1.1.tar.gz

rm -f tcping-linux-amd64-v0.1.1.tar.gz

mv -f tcping /usr/local/bin

echo tcping安装完成!

exit
