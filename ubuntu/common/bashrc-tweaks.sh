#!/bin/sh

# Ubuntu .bashrc Tweaks

echo 'alias update="sudo apt update && apt list --upgradable"' >> ~/.bashrc
echo 'alias upgrade="sudo apt -y upgrade && sudo snap refresh && sudo npm update -g"' >> ~/.bashrc