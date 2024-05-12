### 收集国内外常用DNS，用于加速解析与防污染（DOT/DOH/非标准端口）

[无污染DNS收集列表](/CleanDNS.md)  [国内常用DNS收集列表](/PublicDNS.md)  [家宽DNS收集列表](/BoardbandDNS.md)  [内网DNS收集列表](/LanDNS.md)

### 收集国内常用NTP服务器，用于服务器对时

[NTP服务器收集](/ntp.md)

### 收集国内常用CentOS7安装源，用于服务器软件更新

[CentOS7安装源](/AddSource_CentOS7.md) [Debian安装源](/AddSource_Debian.md)

### Trace安装

IPV4/双栈环境:
```
curl -sSL https://hxhgts.github.io/GreatDNS/nexttrace.sh | bash
```
```
curl -sSL https://hxhgts.github.io/GreatDNS/nexttrace_v1.sh | bash
```
Only IPV6环境:
```
curl -sSL https://hxhgts.github.io/GreatDNS/nexttrace6.sh | bash
```
```
curl -sSL https://hxhgts.github.io/GreatDNS/nexttrace6_v1.sh | bash
```
### Speedtest安装

```
curl -sSL https://hxhgts.github.io/GreatDNS/speedtest.sh | bash

echo YES | speedtest -L

speedtest -s <node_id>
```

### q安装(测试DOH与DOT Server)

```
curl -sSL https://hxhgts.github.io/GreatDNS/install_q.sh | bash
```

### Tcping安装

```
curl -sSL https://hxhgts.github.io/GreatDNS/tcping.sh | bash
```
