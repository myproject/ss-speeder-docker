#!/bin/bash
ETH=$(eval "ifconfig | grep 'eth0'| wc -l")
if [ "$ETH"  ==  '1' ] ; then
	nohup /usr/local/bin/net_speeder eth0 "ip" >/dev/null 2>&1 &
fi
if [ "$ETH"  ==  '0' ] ; then
	nohup /usr/local/bin/net_speeder venet0 "ip" >/dev/null 2>&1 &
fi

/etc/init.d/ssh restart

if [[ ! -z "$@" ]]; then
	/usr/local/bin/ssserver -s 0.0.0.0 "$@"
else
	/usr/local/bin/ssserver -s 0.0.0.0 -p 10080 -k 123456789 -m rc4-md5
fi