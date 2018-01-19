#coding:utf-8


export LANG=UTF-8
export LANGUAGE=UTF-8

yum groupinstall -y "Development tools"
yum install -y nano nginx sqlite-devel screen ncurses-devel ncurses-libs zlib-devel mysql-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel openssl-devel

wget http://on0aob5yd.bkt.clouddn.com/Python-3.6.0.tar.xz && tar xvJf Python-3.6.0.tar.xz && cd Python-3.6.0

./configure
make&& make install

