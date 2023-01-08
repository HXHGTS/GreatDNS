### 备份安装源

```
cp -f /etc/apt/sources.list /etc/apt/sources.list.bak
```

### 官方源Debain11

```
curl -sSL https://gist.github.com/ishad0w/7665cde882aa7dc3eec99613802e61e4/raw/1b250a3fea94f8337b73f70be6694daa9f0ac8d3/sources.list > /etc/apt/sources.list && apt update
```

### 官方源Debain10

```
curl -sSL https://gist.github.com/ishad0w/6ce1eb569c734880200c47923577426a/raw/d1837a88b0f5c314bd07195e97f2d1912e1d0f7e/sources.list > /etc/apt/sources.list && apt update
```

### 官方源Debain9

```
curl -sSL https://gist.github.com/uzielweb/f99d840f9b3b05f1cdb07db25f112d7b/raw/044c7b89776dcf390524408fbf7f6601aa05050e/sources.list > /etc/apt/sources.list && apt update
```

### Yandex源Debain11

```
curl -sSL https://raw.githubusercontent.com/HXHGTS/GreatDNS/master/source/debian/yandex/debian11_yandex_sources.list > /etc/apt/sources.list && apt update
```

### Yandex源Debain10

```
curl -sSL https://raw.githubusercontent.com/HXHGTS/GreatDNS/master/source/debian/yandex/debian10_yandex_sources.list > /etc/apt/sources.list && apt update
```

### Linode源Debain11

```
curl -sSL https://raw.githubusercontent.com/HXHGTS/GreatDNS/master/source/debian/linode/debian11_%20linode_sources.list > /etc/apt/sources.list && apt update
```

### Linode源Debain10

```
curl -sSL https://raw.githubusercontent.com/HXHGTS/GreatDNS/master/source/debian/linode/debian10_%20linode_sources.list > /etc/apt/sources.list && apt update
```
