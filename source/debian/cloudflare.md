## Debian安装源-Cloudflare

### Debian 10

```
rm -f /etc/apt/*.list
curl -sSL https://raw.githubusercontent.com/HXHGTS/GreatDNS/master/source/debian/cloudflare/debian10_%20cloudflare_sources.list > /etc/apt/sources.list && apt update
apt install -y apt-transport-https
```

### Debian 11

```
rm -f /etc/apt/*.list
curl -sSL https://raw.githubusercontent.com/HXHGTS/GreatDNS/master/source/debian/cloudflare/debian11_%20cloudflare_sources.list > /etc/apt/sources.list && apt update
apt install -y apt-transport-https
```
