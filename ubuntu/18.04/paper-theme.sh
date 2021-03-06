#!/bin/bash

# Ubuntu - Install Paper Theme

# Exit immediately if a command exits with a non-zero status
set -e

# Update the user's cached credentials, authenticating the user if necessary
sudo -v

sudo add-apt-repository -y ppa:snwh/pulp
sudo apt update
sudo apt -y install paper-gtk-theme paper-icon-theme
