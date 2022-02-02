#!/bin/sh

echo "Installing nginx + nginx-rtmp module..."
sleep 5
echo "update packages library..."
sudo apt-get update
echo "done"
sleep 2
echo "Installing library and packages..."
apt-get install  ffmpeg libpcre3 unzip libssl-dev build-essential libpcre3-dev zlib1g zlib1g-dev libtool -y
echo "done"
sleep 2


echo "Get module source..."
sleep 2
wget https://github.com/arut/nginx-rtmp-module/archive/master.zip

echo "done"
sleep 2

echo "Get nginx source..."
sleep 2

wget http://nginx.org/download/nginx-1.21.3.tar.gz
echo "done"
sleep 2

echo "Untar nginx source..."
sleep 2

tar -zxvf nginx-1.21.3.tar.gz
unzip master.zip
cd nginx-1.21.3

echo "done"
sleep 2

echo "Compiling nginx source..."
sleep 2

./configure --with-http_ssl_module --add-module=../nginx-rtmp-module-master
make
sudo make install

echo "done"
sleep 2


echo "nginx Auto start enable..."
sleep 2

wget https://raw.github.com/JasonGiedymin/nginx-init-ubuntu/master/nginx -O /etc/init.d/nginx
chmod +x /etc/init.d/nginx
update-rc.d nginx defaults

echo "done"
sleep 2

echo "Start nginx ..."
sleep 2

service nginx start
echo "Gpay - 8686345954"
sleep 2

