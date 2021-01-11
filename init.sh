#!/bin/sh
#####		brook relay		初始化脚本

#更新软件包
apk update
#进入root目录
cd /root

#安装timezone
apk add -U tzdata
#查看时区列表
ls /usr/share/zoneinfo
#拷贝需要的时区文件到localtime
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
#查看当前时间
date

#安装curl
apk add curl

#安装socat
apk add socat
chmod +x /root/run.sh

#卸载curl
apk del curl tzdata

echo '--------------------------------------'
echo 'Brook installation success.'
echo '--------------------------------------'
