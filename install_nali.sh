#!/bin/sh

apt install wget gzip -y

wget https://github.com/zu1k/nali/releases/download/v0.8.0/nali-linux-amd64-v0.8.0.gz -O nali-linux-amd64-v0.8.0.gz

gzip -d nali-linux-amd64-v0.8.0.gz

chmod +x nali-linux-amd64-v0.8.0

mv -f nali-linux-amd64-v0.8.0 /usr/local/bin/nali

echo 'nali已安装!'

echo '----------------------------------'

echo '命令示例(DOH): nali 1.2.3.4'

echo '命令示例(DOT): echo IP 6.6.6.6 | nali'

echo '----------------------------------'

exit 0
