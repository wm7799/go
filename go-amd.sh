#!/bin/bash

#选择版本 (可去 https://golang.org/dl/ 地址查找安装包)
VERSION=go1.20.1                      #此变量可选修改，安装包的版本号
PKG_NAME=go1.20.1.linux-amd64.tar.gz  #此变量可选修改，安装包的名称

#目录设置
GO_DIR=/usr/local      #此变量可选修改，选择 Golang 安装的目录
WORK_DIR=~/go_project  #此变量可选修改，选择日常的工作目录

#下载安装
URL=https://go.dev/dl/$PKG_NAME
cd $GO_DIR && mkdir -p gopkg/$VERSION && cd gopkg && wget $URL
tar -xzvf $PKG_NAME -C $VERSION --strip-components 1
mv $VERSION ../go

#创建工作目录
mkdir -p  $WORK_DIR && cd $WORK_DIR && mkdir bin pkg src

#设置环境变量
echo "#Go Env Settings" >> ~/.bash_profile
echo "export GOPATH=$WORK_DIR" >> ~/.bash_profile
echo "export GOROOT=$GO_DIR/go" >> ~/.bash_profile
echo "export GOBIN=\$GOPATH/bin" >> ~/.bash_profile
echo "export PATH=\$PATH:\$GOBIN:\$GOROOT/bin" >> ~/.bash_profile 
