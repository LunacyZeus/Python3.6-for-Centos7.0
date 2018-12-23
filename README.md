# Python3.6-for-Centos7.0
这个脚本能让你在Centos7.0下搭建Python3.6开发环境(与网上的不同,这个包含许多必需库,不会中途再次重新编译)

注意事项:**本脚本会默认安装screen和nano~**

**2018/12/24更新 **  
yum install python36可以直接安装python3.6.6 安装后输入python36进入shell  
  
使用教程: 
`wget --no-check-certificate https://raw.githubusercontent.com/LunacyZeus/Python3.6-for-Centos7.0/master/install.sh && sh install.sh`
 
安装(这里python3源码使用的我**七牛的源,版本不保证为最新**!!!) 
好了后直接输入python3 就能用了

# 关于pip使用,
本脚本自带pip 输入命令python3 -m pip即可运行。在这里推荐一个比较实用的更换pypi源的工具  
**pqi** 项目地址:https://github.com/Fenghuapiao/PyQuickInstall  
不多说，这是一个能切换pypi源的工具，很实用！！！   
# 修改后yum不可用解决方案 (~~自行百度~~)
通过vi或者nano打开/usr/bin/yum文件并将#! /usr/bin/python 修改为 #! /usr/bin/python2.7

# Centos7.0更换yum源
    mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
    wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo  
    yum clean all
    yum makecache  

# 接下来要做的  
1.提供多个python版本的支持(可以选择使用官方或者七牛镜像源)  
2.提供uwsgi+django+nginx的一键部署  
.......  
