## CentOS安装源-腾讯云

### CentOS 5

```
rm -f /etc/yum.repos.d/*
curl -sSL http://mirrors.cloud.tencent.com/repo/centos5_base.repo > /etc/yum.repos.d/CentOS-Base.repo
yum clean all
yum makecache
```

### CentOS 6

```
rm -f /etc/yum.repos.d/*
curl -sSL http://mirrors.cloud.tencent.com/repo/centos6_base.repo > /etc/yum.repos.d/CentOS-Base.repo
yum clean all
yum makecache
```

### CentOS 7

```
rm -f /etc/yum.repos.d/*
curl -sSL http://mirrors.cloud.tencent.com/repo/centos6_base.repo > /etc/yum.repos.d/CentOS-Base.repo
yum clean all
yum makecache
```

### CentOS 8

```
rm -f /etc/yum.repos.d/*
curl -sSL http://mirrors.cloud.tencent.com/repo/centos6_base.repo > /etc/yum.repos.d/CentOS-Base.repo
yum clean all
yum makecache
```
