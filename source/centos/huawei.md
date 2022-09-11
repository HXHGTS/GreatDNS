## CentOS安装源-华为云

### CentOS 5

```
rm -f /etc/yum.repos.d/*
curl -sSL https://repo.huaweicloud.com/repository/conf/CentOS-5-reg.repo > /etc/yum.repos.d/CentOS-Base.repo
yum clean all
yum makecache
```

### CentOS 6

```
rm -f /etc/yum.repos.d/*
curl -sSL https://repo.huaweicloud.com/repository/conf/CentOS-6-reg.repo > /etc/yum.repos.d/CentOS-Base.repo
yum clean all
yum makecache
```

### CentOS 7

```
rm -f /etc/yum.repos.d/*
curl -sSL https://repo.huaweicloud.com/repository/conf/CentOS-7-reg.repo > /etc/yum.repos.d/CentOS-Base.repo
yum clean all
yum makecache
```

### CentOS 8

```
rm -f /etc/yum.repos.d/*
curl -sSL https://repo.huaweicloud.com/repository/conf/CentOS-8-reg.repo > /etc/yum.repos.d/CentOS-Base.repo
yum clean all
yum makecache
```
