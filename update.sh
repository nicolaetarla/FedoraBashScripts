#!/usr/bin/bash

echo

echo -e "\e[1;32m DNF Version: \e[0m"
dnf --version
echo

echo -e "\e[1;32m Step 0: List repositories \e[0m"
dnf repolist
echo

echo -e "\e[1;32m Step 1: Update packages \e[0m"
sudo dnf update -y
echo

echo -e "\e[1;32m Step 2: Upgrade packages \e[0m"
sudo dnf upgrade -y
echo

echo -e "\e[1;32m Step 3: Clean-up packages \e[0m"
# Clear the DNF Cache:
sudo dnf clean all
# sudo dnf autoremove - possible issues on Fedora, to investigate some more - Warning in the docs
echo

echo -e "\e[1;32m All done! \e[0m"

exit
