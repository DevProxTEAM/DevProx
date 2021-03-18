#!/usr/bin/env bash
THIS_DIR=$(cd $(dirname $0); pwd)
Version=`lsb_release -rs | cut -f1 -d"."`
install() {
echo -e "\033[0;36m"
echo -e "~ Welcome To Source DevProx - اهلا بك في سورس ديف بروكس ~"
echo -e "     ~ { Setting Up Offices - جاري رفع المكاتب } ~"
echo -e "\033[0m"
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y
sudo apt-get install upstart-sysv -y
sudo apt-get install tmux -y
sudo apt-get install dnsutils -y
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get install libreadline-dev -y libconfig-dev -y libssl-dev -y lua5.2 -y liblua5.2-dev -y lua-socket -y lua-sec -y lua-expat -y libevent-dev -y make unzip git redis-server autoconf g++ -y libjansson-dev -y libpython-dev -y expat libexpat1-dev -y curl -y htop -y wget -y
if [ "$Version" == "18" ]; then
echo -e "\033[0;31m\n~ Installing Depedencies For Ubuntu 18... \n\033[0m"
cd /lib/x86_64-linux-gnu/ && sudo ln -s libreadline.so.7.0 libreadline.so.6
wget "apiabs.ml/installubuntu18/compat-libevent2-5_2.0.21-1ubuntu18_amd64.deb" && sudo dpkg -i compat-libevent2-5_2.0.21-1ubuntu18_amd64.deb
rm compat-libevent2-5_2.0.21-1ubuntu18_amd64.deb
fi
sudo apt-get install screen -y
sudo apt-get install libconfig++9v5 -y 
sudo apt-get install libstdc++6 -y
sudo apt-get install lua-lgi -y
sudo apt-get install libnotify-dev -y
sudo apt-get install lua-space -y
sudo service redis-server start
sudo apt-get update -y
sudo apt-get install g++-4.7 -y c++-4.7
sudo apt-get install luarocks -y
wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz;tar zxpf luarocks-2.2.2.tar.gz;cd luarocks-2.2.2 && ./configure && make && sudo make install
sudo luarocks install luasocket
sudo luarocks install luasec
sudo luarocks install redis-lua
sudo luarocks install lua-term
sudo luarocks install serpent
sudo luarocks install dkjson
sudo luarocks install Lua-cURL
sudo luarocks install luautf8
cd .. ;sudo rm -rf luarocks*
sudo timedatectl set-timezone Asia/Baghdad
echo -e "\033[0;36m"
echo -e "---------------------------------------------"
echo -e "|    ____             ____                  |"
echo -e "|   |  _ \  _____   _|  _ \ _ __ _____  __  |"
echo -e "|   | | | |/ _ \ \ / / |_) | '__/ _ \ \/ /  |"
echo -e "|   | |_| |  __/\ V /|  __/| | | (_) >  <   |"
echo -e "|   |____/ \___| \_/ |_|   |_|  \___/_/\_\  |"
echo -e "|-------------------------------------------|"
echo -e "|This Source Was Developed By (ABS) @IQ_ABS.|"
echo -e "|  This Is The Source Channel @Dev_Prox .   |"
echo -e "|               - DevProx -                 |"
echo -e "---------------------------------------------"
echo -e "\033[0m"
cd $THIS_DIR && sudo chmod +x tg
lua DevProx.lua
}
if [ "$1" = "install" ]; then
install
else
if [ ! -f ./tg ]; then
echo -e "\033[0;31m\n~ The tg File Was Not Found In The Bot Files\n\033[0;33m"
exit 1
fi
cd $THIS_DIR && sudo chmod +x tg
lua DevProx.lua
fi
