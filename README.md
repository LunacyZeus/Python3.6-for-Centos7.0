# Python3.6-for-Centos7.0
这个脚本能让你在Centos7.0下搭建Python3.6开发环境(与网上的不同,这个包含许多必需库,不会中途再次重新编译)
  
  使用教程: wget --no-check-certificate https://raw.githubusercontent.com/LunacyZeus/Python3.6-for-Centos7.0/master/install.sh && sh install.sh
 
安装 好了后直接输入python3 就能用了
修改后yum不可用解决方案 自行百度
# Centos7.0更换yum源
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup  
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo  
yum clean all  
yum makecache  
