wget http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
sudo rpm --import "http://nginx.org/keys/nginx_signing.key"
sudo yum install /home/sue/download/nginx-release-centos-7-0.el7.ngx.noarch.rpm
sudo yum install nginx
