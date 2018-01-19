#Centos 7.0 安装Python3.6脚本
#作者: LunacyZeus
#Git主页: https://github.com/LunacyZeus

echo "Python3.6 for Centos 7.0 一键安装脚本\nGitHub主页地址: https://github.com/LunacyZeus\n这个脚本是我在经过多次测试后做出来的,安装了Python要用的所有的必需库(如有缺少,请指出,谢谢!),不会出现在使用中需要某些库而重新编译安装Python的蛋疼事情\n\nPs: 本脚本在腾讯云亲测可用\n  遇到问题请在Github提交BUG"


echo "Let's Go..."

echo "设定字符集"
export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN.UTF-8

echo "安装开发环境工具..."
yum groupinstall -y "Development tools"
yum install -y nano nginx sqlite-devel screen ncurses-devel ncurses-libs zlib-devel mysql-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-develtk-devel gdbm-devel db4-devel libpcap-devel xz-devel openssl-devel

echo "获取并解压Python3.6源码..."
wget http://on0aob5yd.bkt.clouddn.com/Python-3.6.0.tar.xz && tar xvJf Python-3.6.0.tar.xz && cd Python-3.6.0

echo "构建Python3.6..."
./configure
echo "编译安装Python3.6..."
make&& make install

echo "好了,你的Python3.6 for Centos7.0之旅正式开始啦~"
