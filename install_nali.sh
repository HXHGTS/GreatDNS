#!/bin/sh

NALI_VERSION=v0.8.0

apt install wget gzip -y

wget https://github.com/zu1k/nali/releases/download/${NALI_VERSION}/nali-linux-amd64-${NALI_VERSION}.gz -O nali-linux-amd64-${NALI_VERSION}.gz

gzip -d nali-linux-amd64-${NALI_VERSION}.gz

chmod +x nali-linux-amd64-${NALI_VERSION}

mv -f nali-linux-amd64-${NALI_VERSION} /usr/local/bin/nali

echo 'nali已安装!'

echo '----------------------------------'

echo '命令示例(DOH): nali 1.2.3.4'

echo '命令示例(DOT): echo IP 6.6.6.6 | nali'

echo '----------------------------------'

exit 0
