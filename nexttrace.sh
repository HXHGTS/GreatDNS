#!/bin/sh
install -d -m 0755 /etc/apt/keyrings
curl -fsSL -o /tmp/nexttrace-archive-keyring.gpg https://github.com/nxtrace/nexttrace-debs/releases/latest/download/nexttrace-archive-keyring.gpg
install -m 0644 /tmp/nexttrace-archive-keyring.gpg /etc/apt/keyrings/nexttrace.gpg
rm -f /tmp/nexttrace-archive-keyring.gpg
printf '%s\n' 'Types: deb' 'URIs: https://github.com/nxtrace/nexttrace-debs/releases/latest/download/' 'Suites: ./' 'Signed-By: /etc/apt/keyrings/nexttrace.gpg' | tee /etc/apt/sources.list.d/nexttrace.sources >/dev/null
apt update
apt install nexttrace
exit 0
