### 重置官方源(CentOS7)
```
rm -f /etc/yum.repos.d/*
rpm -Uvh --force http://mirror.centos.org/centos-7/7/os/x86_64/Packages/centos-release-7-9.2009.0.el7.centos.x86_64.rpm
yum clean all
yum makecache
```
