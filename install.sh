#!/bin/sh
echo "Wait a minute, please...."
sleep 5
pkg update && pkg upgrade
read -p "Install All Repo? [y/n] " hu
if [ $hu = "y" ]; then
 pkg install x11-repo
 pkg install unstable-repo
 pkg install root-repo
 pkg install science-repo
 pkg install game-repo

elif [ $hu = "n" ]; then
 echo "Exit..."
 sleep 5
 exit 1
fi
pkg install proot axel openssl -y
chmod +x Kali-Nethunter
