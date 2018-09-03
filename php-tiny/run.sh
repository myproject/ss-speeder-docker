#!/bin/bash

ETH=$(eval "ifconfig | grep 'eth0'| wc -l")
if [ "$ETH"  ==  '1' ] ; then
	nohup /usr/local/bin/net_speeder eth0 "ip" >/dev/null 2>&1 &
fi
if [ "$ETH"  ==  '0' ] ; then
	nohup /usr/local/bin/net_speeder venet0 "ip" >/dev/null 2>&1 &
fi

sed -i 's/127.0.0.1/'$s'/g'  /usr/local/bin/Applications/Shadowsocks/config.php
sed -i 's/rc4-md5/'$m'/g' /usr/local/bin/Applications/Shadowsocks/config.php
sed -i 's/123456789/'$k'/g' /usr/local/bin/Applications/Shadowsocks/config.php
sed -i 's/443/'$p'/g' /usr/local/bin/Applications/Shadowsocks/config.php
sed -i 's/1080/'$c'/g' /usr/local/bin/Applications/Shadowsocks/config.php
sed -i 's/50/'$n'/g' /usr/local/bin/Applications/Shadowsocks/config.php

php start.php start