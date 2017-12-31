#!/bin/bash

# 安装第三方微信客户端

clear

echo "创建应用文件夹.app (建议新手把软件安装到此目录)"
mkdir $HOME/.app
cd $HOME/.app

echo ""
echo "正在下载客户端……"
echo ""
wget https://github.com/geeeeeeeeek/electronic-wechat/releases/download/V2.0/linux-x64.tar.gz

echo ""
echo "解压中……"
tar -zxvf linux-x64.tar.gz

echo ""
echo "安装启动器"
echo ""
wget https://github.com/ysfl/elementaryos/blob/master/%E5%BE%AE%E4%BF%A1.desktop
echo "Exec=$HOME/.app/electronic-wechat-linux-x64/electronic-wechat">>微信.desktop
echo "Icon=$HOME/.app/electronic-wechat-linux-x64/assets/icon.png">>微信.desktop
sudo chmod +x /usr/share/applications/微信.desktop
sudo chmod +x /home/$LOGNAME/Desktop/微信.desktop
