### 重置官方源(CentOS7)
```
rm -f /etc/yum.repos.d/* && curl https://raw.githubusercontent.com/HXHGTS/GreatDNS/master/CentOS7-Base.repo > /etc/yum.repos.d/CentOS-Base.repo && yum clean all && yum makecache
```

