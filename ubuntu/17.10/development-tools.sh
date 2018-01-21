#!/bin/sh

# Ubuntu 17.10 Development Tools

# Update Repositories
sudo apt update

# Install Snap Packages
./../common/snaps.sh

# Install GitKraken
./../common/gitkraken.sh

# Install Docker
./../common/docker.sh

# Install Angular, Ionic, and Download Source Code
./../common/angular-ionic.sh

# Install Ubuntu Make from PPA
sudo add-apt-repository -y ppa:lyzardking/ubuntu-make
sudo apt update
sudo apt install -y ubuntu-make

# Install Android Studio
umake android $HOME/.local/share/umake/android/android-studio --accept-license
echo 'export ANDROID_HOME=~/Android/Sdk' >> ~/.bashrc
echo 'export PATH=$PATH:~/Android/Sdk/platform-tools' >> ~/.bashrc
sudo apt install -y gradle

# Install Atom
# sudo apt install -y gconf2
# umake ide atom $HOME/.local/share/umake/ide/atom

# Install IntelliJ Ultimate
# umake ide idea-ultimate $HOME/.local/share/umake/ide/idea-ultimate
# cp -r ../../.IntelliJIdea* ~/

# Install Visual Studio Code
# umake ide visual-studio-code $HOME/.local/share/umake/ide/visual-studio-code --accept-license

# Install Packages
# sudo add-apt-repository -y ppa:jderose/couchdb-1.7.0
# sudo apt update
# sudo apt install -y couchdb
