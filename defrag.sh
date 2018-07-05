#!/bin/bash
#Defrager

clear
echo "**********************************************"
echo "*********Test if you have a e4defrag**********"
echo "**********************************************"
echo "*******Upddate and upgrade e4defrag***********"
echo "**********************************************"
echo ""
echo ""
read -p "Press Any key to Continiue with Update and upgrade of e4defrag"
sudo apt-get update && sudo apt-get install e4defrag
clear
echo "*************************************************"
echo "******Give me disk or directory to defrag********"
echo "%%%%%%This weel defrag all in /dev/*%%%%%%%%%%%%%"
echo "*************************************************"
read -p "Press ENTER to Continiue with e4defrag"
sudo e4defrag -v /dev/*
exit
