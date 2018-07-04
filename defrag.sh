#!/bin/bash
#Defrager

clear
echo "**********************************************"
echo "*********Test if you have a e4defrag**********"
echo "**********************************************"
echo "*******Upddate and upgrade e4defrag***********"
echo "**********************************************"
sudo apt-get update && sudo apt-get install e4defrag
clear
echo "*************************************************"
echo "****Give me disk or directory to defrag**********"
echo "*if you dont knoe wher is disk run sudo fdisk -l*"
echo "*************************************************"
read $lokacija
sudo e4defrag -v $lokacija
exit
