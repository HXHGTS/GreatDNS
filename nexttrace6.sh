#!/bin/sh
apt install wget -y
wget https://summer-poetry-7fa8.qq0mjpmkt9z.workers.dev/xgadget-lab/nexttrace/releases/latest/download/nexttrace_linux_amd64 -O /usr/local/bin/nexttrace
chmod +x /usr/local/bin/nexttrace
exit 0
