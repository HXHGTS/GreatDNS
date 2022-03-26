#!/bin/sh
apt install wget unzip -y
wget https://cdn.ipip.net/17mon/besttrace4linux.zip -O /root/besttrace4linux.zip
unzip -d /root/besttrace4linux /root/besttrace4linux.zip
cp -f /root/besttrace4linux/besttrace /root/besttrace 
chmod +x besttrace
rm -rf /root/besttrace4linux /root/besttrace4linux.zip
exit 0
