### 重置官方源
```
rm -f /etc/yum.repos.d/* && curl https://cdn.jsdelivr.net/gh/HXHGTS/GreatDNS/CentOS7-Base.repo > /etc/yum.repos.d/CentOS-Base.repo && yum clean all && yum makecache
```
### 添加阿里源
```
wget http://mirrors.aliyun.com/repo/Centos-7.repo -O /etc/yum.repos.d/CentOS-Base.repo && yum clean all && yum makecache && yum repolist
```

### 添加腾讯源
```
wget http://mirrors.cloud.tencent.com/repo/centos7_base.repo -O /etc/yum.repos.d/CentOS-Base.repo
yum clean all && yum makecache
yum repolist
```

### 添加网易源
```
wget https://mirrors.163.com/.help/CentOS7-Base-163.repo -O /etc/yum.repos.d/CentOS-Base.repo
yum clean all && yum makecache
yum repolist
```

### 添加华为源
```
wget https://mirrors.huaweicloud.com/repository/conf/CentOS-7-anon.repo -O /etc/yum.repos.d/CentOS-Base.repo
yum clean all && yum makecache
yum repolist
```

### 添加清华源
```
wget https://cdn.jsdelivr.net/gh/HXHGTS/GreatDNS/CentOS-Base-Tsinghua.repo -O /etc/yum.repos.d/CentOS-Base.repo
yum clean all && yum makecache
yum repolist
```

### 添加中科大源
```
wget https://cdn.jsdelivr.net/gh/HXHGTS/GreatDNS/CentOS-Base-USTC.repo -O /etc/yum.repos.d/CentOS-Base.repo
yum clean all && yum makecache
yum repolist
```

### 添加浙大源
```
wget https://cdn.jsdelivr.net/gh/HXHGTS/GreatDNS/CentOS-Base-Zju.repo -O /etc/yum.repos.d/CentOS-Base.repo
yum clean all && yum makecache
yum repolist
```
