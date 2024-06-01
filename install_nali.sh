#!/bin/sh

apt install curl gawk wget gzip -y

NALI_VERSION=$(curl https://api.github.com/repos/zu1k/nali/tags | grep name | gawk -F\" '{print $4}' | head -n 1)

wget https://github.com/zu1k/nali/releases/download/${NALI_VERSION}/nali-linux-amd64-${NALI_VERSION}.gz -O nali-linux-amd64-${NALI_VERSION}.gz

gzip -d nali-linux-amd64-${NALI_VERSION}.gz

chmod +x nali-linux-amd64-${NALI_VERSION}

mv -f nali-linux-amd64-${NALI_VERSION} /usr/local/bin/nali

echo 'nali已安装!'

echo '----------------------------------'

echo '命令示例: nali 1.2.3.4'

echo 'echo IP 6.6.6.6 | nali'

echo '----------------------------------'

exit 0
