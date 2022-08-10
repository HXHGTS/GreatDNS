#!/bin/sh

curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash

apt install -y speedtest

exit 0
