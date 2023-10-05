#!/bin/sh

echo '正在安装/升级必需插件. . .'

apt update

apt install -y curl wget tar gawk sed

echo '正在安装/升级go. . .'

apt remove -y --purge golang

apt autoremove -y

rm -rf /usr/local/go

Go_Version=$(curl https://github.com/golang/go/tags | grep '/releases/tag/go' | head -n 1 | gawk -F/ '{print $6}' | gawk -F\" '{print $1}')

wget -O /var/tmp/${Go_Version}.linux-amd64.tar.gz https://go.dev/dl/${Go_Version}.linux-amd64.tar.gz

tar -C /usr/local -xzf /var/tmp/${Go_Version}.linux-amd64.tar.gz

rm -f /var/tmp/${Go_Version}.linux-amd64.tar.gz

export PATH=$PATH:/usr/local/go/bin

go version

echo '正在编译linux版q. . .'

env GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go install -ldflags="-s -w -X main.version=release" github.com/natesales/q@latest

echo '正在安装q. . .'

mv -f /root/go/bin/q /usr/local/bin/

chmod +x /usr/local/bin/q

echo 'q已安装!'

exit 0
