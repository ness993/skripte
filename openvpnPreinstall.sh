#!/bin/bash
#instalation of upgraded and open vpnserver
sudo apt update && sudo apt upgrade -y && sudo apt install -y wget
#instal openvpn
wget https://git.io/vpn -O openvpn-install.sh && sudo bash openvpn-install.sh
#ufw settingUp
sudo net.ipv4.ip_forward=1
sudo ufw disable
sudo ufw default deny incoming
sudo ufw default deny outgoing
sudo ufw allow ssh
sudo ufw allow 1194/udp
sudo ufw allow 80
sudo ufw allow 53
sudo ufw allow 443
clear
echo ""
echo "# START OPENVPN RULES"
echo "# NAT table rules"
echo "*nat"
echo ":POSTROUTING ACCEPT [0:0] "
echo "# Allow traffic from OpenVPN client to wlp11s0 (change to the interface you discovered!)"
echo "-A POSTOUTING -s 10.8.0.0/8 -o <inter access internat> -j MASQUERADE"
echo "COMMIT"
echo "# END OPENVPN RULES"
echo ""
read -n 1 -p "Any key to Cont:"
sudo nano /etc/ufw/before.rules
clear
echo "UFW allow forwerding setting treba promeniti"
echo "Nađi DEFAULT_FORWARD_POLICY=ACCEPT"
sudo nano /etc/default/ufw
sudo ufw enable
sudo systemctl enable openvpn@server
