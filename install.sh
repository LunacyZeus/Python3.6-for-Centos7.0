#Centos 7.0 安装Python3.6脚本
#作者: LunacyZeus
#Git主页: https://github.com/LunacyZeus



echo "设定字符集"
export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN.UTF-8

echo "安装开发环境工具..."
yum groupinstall -y "Development tools"
yum install -y nano nginx sqlite-devel screen ncurses-devel ncurses-libs zlib-devel mysql-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel openssl-devel

echo "获取并解压Python3.6源码..."
wget http://on0aob5yd.bkt.clouddn.com/Python-3.6.0.tar.xz && tar xvJf Python-3.6.0.tar.xz && cd Python-3.6.0

echo "构建Python3.6..."
./configure
echo "编译安装Python3.6..."
make&& make install

echo "好了,你的Python3.6 for Centos7.0之旅正式开始啦~"
