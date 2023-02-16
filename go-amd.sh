#!/bin/bash

#选择版本( 查找去 https://golang.org/dl/ )

sudo rm -rf /usr/local/go
sudo apt-get remove golang -y
sudo apt-get remove golang-go -y
sudo apt-get autoremove -y

#下载文件
sudo wget https://golang.google.cn/dl/go1.20.1.linux-amd64.tar.gz
# 解压文件
sudo tar xfz go1.20.1.linux-amd64.tar.gz -C /usr/local

#设置环境变量

echo "export GOROOT=/usr/local/go" >> /etc/profile
echo "export GOPATH=$HOME/gowork" >> /etc/profile
echo "export GOBIN=$GOPATH/bin" >> /etc/profile
echo "export PATH=$GOPATH:$GOBIN:$GOROOT/bin:$PATH" >> /etc/profile

#刷新环境变量
source /etc/profile
#输入查看是否生效
go version
