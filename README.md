# Python3.6-for-Centos7.0
这个脚本能让你在Centos7.0下搭建Python3.6开发环境(与网上的不同,这个包含许多必需库,不会中途再次重新编译)
  
  使用教程: wget --no-check-certificate https://raw.githubusercontent.com/LunacyZeus/Python3.6-for-Centos7.0/master/install.sh && sh install.sh

修改后yum不可用解决方案

nano /usr/bin/yum
然后将首行的
#!/usr/bin/python
改为
#!/usr/bin/python2.6.6


# Centos7.0更换yum源
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
yum clean all
yum makecache
