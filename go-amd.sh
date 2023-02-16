#!/bin/bash
  
#选择版本( 查找去 https://golang.org/dl/ )
VERSION=go1.20.1
PKG_NAME=go1.20.1.linux-amd64.tar.gz

#安装目录
WORK_DIR=/usr/local

#下载安装
URL=https://go.dev/dl/$PKG_NAME
cd $WORK_DIR && mkdir -p gopkg/$VERSION && cd gopkg &&wget $URL
tar -xzvf $PKG_NAME -C $VERSION --strip-components 1
rm -rf ../go &&mv $VERSION ../go
