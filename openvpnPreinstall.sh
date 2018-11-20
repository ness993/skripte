#!/bin/bash
#instalation of upgraded and open vpnserver
sudo apt update && sudo apt upgrade -y && sudo apt install -y wget
#ufw settingUp

#instal openvpn
wget https://git.io/vpn -O openvpn-install.sh && sudo bash openvpn-install.sh
