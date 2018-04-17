#!/bin/bash
path="$HOME/.app"
app=$(dirname $(readlink -f "install_wechat.sh"))
file="linux-x64.tar.gz"
wechat="$path/electronic-wechat-linux-x64"
url="https://github.com/geeeeeeeeek/electronic-wechat/releases/download/V2.0/linux-x64.tar.gz"
ico="https://raw.githubusercontent.com/geeeeeeeeek/electronic-wechat/master/assets/icon.png"
# 安装第三方微信客户端

clear

echo '-----------------------------------------------------------------------------'
echo "安装依赖组件"
echo '-----------------------------------------------------------------------------'
sudo apt-get install gconf2

echo '-----------------------------------------------------------------------------'
echo "创建应用文件夹.app (建议新手把软件安装到此目录)"
echo '-----------------------------------------------------------------------------'
if [ ! -f "$wechat/wechat.png" ];then
  icon="wechat.png"
else
  icon="new.wechat.png"
fi
  wget -O $icon $ico

echo "Exec=$wechat/electronic-wechat">>$app/WebChat.desktop
echo "Icon=$wechat/$icon">>$app/WebChat.desktop
  if [[ ! -f "$HOME/Desktop" ]]; then
    cp $app/WebChat.desktop $HOME/Desktop
    sudo chmod +x $HOME/Desktop/WebChat.desktop
  fi
  sudo cp $app/WebChat.desktop /usr/share/applications
  sudo chmod +x /usr/share/applications/WebChat.desktop
if [ ! -d $path ];
then
  mkdir $path
else
echo ".app文件夹已存在，将继续安装."
fi

cd $path

echo '-----------------------------------------------------------------------------'
echo "正在下载客户端……"
echo '-----------------------------------------------------------------------------'
if [ ! -f $file ];then
  filename="linux-x64.tar.gz"
else
  filename="new.linux-x64.tar.gz"
fi
  wget -O $filename $url

echo '-----------------------------------------------------------------------------'
echo "解压中……"
echo '-----------------------------------------------------------------------------'
  tar -zxvf $filename
  mv $app/$icon $wechat

  echo '-----------------------------------------------------------------------------'
  echo "清理文件……"
  echo '-----------------------------------------------------------------------------'
  echo "是否删除文件？输入：y删除  n不删除"
  rm -i $path/$filename
  sudo rm -R $HOME/elementaryos

echo '-----------------------------------------------------------------------------'
echo "微信安装完成！"
echo '-----------------------------------------------------------------------------'
echo '制作：ysfl   QQ：1007265870   邮箱：ysfllxcn@live.com   论坛：http://e.ysfl.cn/bbs'
echo '-----------------------------------------------------------------------------'

  notify-send -i utilities-terminal 微信 "微信安装完成！"
