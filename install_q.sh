#!/bin/sh

echo '正在关闭/卸载sing-box核心. . .'

systemctl stop sing-box

systemctl disable sing-box

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

echo '正在编译linux版sing-box核心. . .'

Singbox_Version=$(curl https://api.github.com/repos/SagerNet/sing-box/releases  | grep "tag_name" | head -n 1 | gawk -F\" '{print $4}')

env GOOS=linux GOARCH=amd64 GOAMD64=v3 CGO_ENABLED=0 go install -ldflags "-X github.com/sagernet/sing-box/constant.Version=${Singbox_Version}" -v -tags with_quic,with_ech,with_reality_server github.com/sagernet/sing-box/cmd/sing-box@${Singbox_Version}

echo '正在安装sing-box核心. . .'

mv -f /root/go/bin/sing-box /usr/local/bin/

chmod +x /usr/local/bin/sing-box

Default_ConfDir=/etc/sing-box

Set_ConfDir=/usr/local/etc/sing-box

Default_BinDir=/usr/bin/sing-box

Set_BinDir=/usr/local/bin/sing-box

mkdir -p ${Set_ConfDir}

mkdir -p /var/lib/sing-box

echo '{}' > ${Set_ConfDir}/config.json

curl https://raw.githubusercontent.com/HXHGTS/Singbox-Install/main/service/sing-box-compatible.service > /etc/systemd/system/sing-box.service

curl https://raw.githubusercontent.com/HXHGTS/Singbox-Install/main/service/sing-box-compatible@.service > /etc/systemd/system/sing-box@.service

systemctl daemon-reload

wget -O /var/lib/sing-box/geosite.db https://github.com/soffchen/sing-geosite/releases/latest/download/geosite.db

wget -O /var/lib/sing-box/geoip.db https://github.com/soffchen/sing-geoip/releases/latest/download/geoip.db

systemctl start sing-box

echo 'sing-box核心已安装!'

exit 0
