### 添加阿里源
```
curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
yum clean all && yum makecache
yum repolist
```

### 添加腾讯源
```
curl -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.cloud.tencent.com/repo/centos7_base.repo
yum clean all && yum makecache
yum repolist
```

### 添加网易源
```
curl -O /etc/yum.repos.d/CentOS-Base.repo https://mirrors.163.com/.help/CentOS7-Base-163.repo
yum clean all && yum makecache
yum repolist
```

### 添加清华源
```
echo '151.101.108.133 raw.githubusercontent.com' > /etc/hosts
curl -O /etc/yum.repos.d/CentOS-Base.repo https://raw.githubusercontent.com/HXHGTS/GreatDNS/master/CentOS-Base.repo
yum clean all && yum makecache
yum repolist
```
