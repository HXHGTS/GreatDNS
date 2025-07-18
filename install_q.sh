#!/bin/sh

apt install -y curl wget tar

Q_VERSION=0.19.2

# Q_VERSION=$(curl https://api.github.com/repos/natesales/q/tags | grep name | awk -F\" '{print $4}' | head -n 1 | sed -e 's/v//g')

wget https://github.com/natesales/q/releases/download/v${Q_VERSION}/q_${Q_VERSION}_linux_amd64.tar.gz -O q_${Q_VERSION}_linux_amd64.tar.gz

mkdir -p q_${Q_VERSION}_linux_amd64 && tar -xzvf q_${Q_VERSION}_linux_amd64.tar.gz -C q_${Q_VERSION}_linux_amd64/

chmod +x q_${Q_VERSION}_linux_amd64/q

mv -f q_${Q_VERSION}_linux_amd64/q /usr/local/bin/q

rm -rf q_${Q_VERSION}_linux_amd64

rm -f q_${Q_VERSION}_linux_amd64.tar.gz

echo 'q已安装!'

echo '----------------------------------'

echo '命令示例(DOH): q www.google.com @https://8.8.8.8/dns-query'

echo '命令示例(DOT): q www.google.com @tls://8.8.8.8:853'

echo '----------------------------------'

exit 0
