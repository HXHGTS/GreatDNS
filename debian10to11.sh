#!/bin/sh

export DEBIAN_FRONTEND=noninteractive

echo Debian10 To Debian11 Updating. . .

apt install -y curl

rm -f /etc/apt/*.list

curl -sSL https://gist.github.com/ishad0w/7665cde882aa7dc3eec99613802e61e4/raw/1b250a3fea94f8337b73f70be6694daa9f0ac8d3/sources.list > /etc/apt/sources.list

#sed -i 's/buster\/updates/bullseye-security/g;s/buster/bullseye/g' /etc/apt/sources.list

#sed -i 's/buster/bullseye/g' /etc/apt/sources.list.d/*.list

apt update

#dpkg --configure -a

#apt --fix-broken install -y

apt full-upgrade -y

apt dist-upgrade -y

apt autoclean

apt --purge autoremove -y

echo -------------------------
echo -----System Version------
echo -------------------------
lsb_release -a
echo 
echo -------------------------

exit 0
