#!/bin/sh

mkdir v2ray-linux-64
mv v2ray-linux-64.zip ./v2ray-linux-64
cd v2ray-linux-64
unzip v2ray-linux-64.zip
mkdir /usr/bin/v2ray/
cp v2ray /usr/bin/v2ray/v2ray
cp v2ctl /usr/bin/v2ray/v2ctl
cp geoip.dat /usr/bin/v2ray/geoip.dat
cp geosite.dat /usr/bin/v2ray/geosite.dat
mkdir /etc/v2ray/
cp vpoint_vmess_freedom.json /etc/v2ray/config.json
cp ./systemd/v2ray.service /usr/lib/systemd/system
mkdir /var/log/v2ray/
touch /var/log/v2ray/access.log
touch /var/log/v2ray/error.log
touch /var/run/v2ray.pid
systemctl start v2ray
systemctl enable v2ray
ufw allow 10086
