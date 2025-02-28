#!/bin/bash
NS=$( cat /etc/xray/dns )
PUB=$( cat /etc/slowdns/server.pub )
domain=$(cat /etc/xray/domain)
#color
grenbo="\e[92;1m"
NC='\e[0m'
#install
cd /root
rm -rf jb
#install
apt update && apt upgrade
apt install python3 python3-pip git
cd /usr/bin
wget https://raw.githubusercontent.com/rajaganjil93/hss/main/project10/bot.zip
unzip bot.zip
mv bot/* /usr/bin
chmod +x /usr/bin/*
rm -rf bot.zip
cd /root
wget https://raw.githubusercontent.com/rajaganjil93/hss/main/project10/jb.zip
unzip jb.zip
rm -rf jb.zip
pip3 install -r jb/requirements.txt
pip3 install pillow

#isi data
echo ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " \e[1;97;101m          ADD BOT PANEL          \e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "${grenbo}Tutorial Creat Bot and ID Telegram${NC}"
echo -e "${grenbo}[*] Creat Bot and Token Bot : @BotFather${NC}"
echo -e "${grenbo}[*] Info Id Telegram : @MissRose_bot , perintah /info${NC}"
echo -e "${grenbo}[*] Bot By Julak Bantur CIBUT2D PROJECT${NC}"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -e -p "[*] Input your Bot Token : " bottoken
read -e -p "[*] Input Your Id Telegram :" admin
echo -e BOT_TOKEN='"'$bottoken'"' >> /root/jb/var.txt
echo -e ADMIN='"'$admin'"' >> /root/jb/var.txt
echo -e DOMAIN='"'$domain'"' >> /root/jb/var.txt
echo -e PUB='"'$PUB'"' >> /root/jb/var.txt
echo -e HOST='"'$NS'"' >> /root/jb/var.txt
clear

cat > /etc/systemd/system/jb.service << END
[Unit]
Description=Simple register - @Cibut2d
After=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/python3 -m jb
Restart=always

[Install]
WantedBy=multi-user.target
END

systemctl start jb 
systemctl enable jb
cd /root
rm -rf cibut.sh
echo "Done"
echo "Your Data Bot"
echo -e "==============================="
echo "Token Bot         : $bottoken"
echo "Admin          : $admin"
echo "Domain        : $domain"
echo "Pub            : $PUB"
echo "Host           : $NS"
echo -e "==============================="
echo "Setting done"
clear

echo " Installations complete, type /menu on your bot"
