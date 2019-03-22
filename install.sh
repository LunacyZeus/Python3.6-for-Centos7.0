#coding:utf-8
export LANG=UTF-8
export LANGUAGE=UTF-8

UPPDATE_TEXT_COLOR='\E[1;31m'
RES='\E[0m'
echo -e  "${UPPDATE_TEXT_COLOR}======2018/05/05更新======\n\n1.Python版本更新到3.6.5\n2.鉴于阿里云访问python官方源太慢,这里做了七牛cdn的加速\n\n\n${RES}"

yum groupinstall -y "Development tools"
yum install -y nano nginx screen 
yum install -y libffi-devel sqlite-devel ncurses-devel ncurses-libs zlib-devel mysql-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel openssl-devel

wget -O python.tar.xz https://www.python.org/ftp/python/3.6.6/Python-3.6.6.tar.xz && tar xvJf python.tar.xz && cd Python-3.6.6
./configure
make&& make install

