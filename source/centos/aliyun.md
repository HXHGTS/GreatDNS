## CentOS安装源-阿里云

### CentOS 6

```
rm -f /etc/yum.repos.d/*
curl -sSL https://mirrors.aliyun.com/repo/Centos-6.repo > /etc/yum.repos.d/CentOS-Base.repo
yum clean all
yum makecache
sed -i -e '/mirrors.cloud.aliyuncs.com/d' -e '/mirrors.aliyuncs.com/d' /etc/yum.repos.d/CentOS-Base.repo
```

### CentOS 7

```
rm -f /etc/yum.repos.d/*
curl -sSL https://mirrors.aliyun.com/repo/Centos-7.repo > /etc/yum.repos.d/CentOS-Base.repo
yum clean all
yum makecache
sed -i -e '/mirrors.cloud.aliyuncs.com/d' -e '/mirrors.aliyuncs.com/d' /etc/yum.repos.d/CentOS-Base.repo
```

### CentOS 8

```
rm -f /etc/yum.repos.d/*
curl -sSL https://mirrors.aliyun.com/repo/Centos-8.repo > /etc/yum.repos.d/CentOS-Base.repo
yum clean all
yum makecache
sed -i -e '/mirrors.cloud.aliyuncs.com/d' -e '/mirrors.aliyuncs.com/d' /etc/yum.repos.d/CentOS-Base.repo
```
