# Shadowsocks with net-speeder
这是一个Shadowsocks Docker 无SSH

## Docker启动

```
docker run -d --name ss-with-net-speeder -p 10080:10080 -p 80:80 icegreen/ss-speeder-docker:no-ssh -s 0.0.0.0 -p 10080 -k 123456789 -m rc4-md5
```

## 支持Docker Hub部署的托管（如：Arukas.io） 启动

```
镜像 ：icegreen/ss-speeder-docker:no-ssh
CMD ：-p 10080 -k 123456789 -m rc4-md5   (默认为此配置，可不填)
```

## 感谢
lowid/ss-with-net-speeder

malaohu/ss-with-net-speeder

soloradish/ss-with-net-speeder