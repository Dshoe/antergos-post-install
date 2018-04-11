#!/bin/bash

# Ubuntu - Development Tools

# Exit immediately if a command exits with a non-zero status
set -e

# Store a local variable of the scripts current directory
DEVELOPMENT_TOOLS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install Snap Packages
echo '==> Install development Snap packages? (Y/n)'
read SNAP_PACKAGES
if [ "$SNAP_PACKAGES" = 'y' ] || [ "$SNAP_PACKAGES" = 'yes' ] || [ "$SNAP_PACKAGES" = '' ]; then
    . ${DEVELOPMENT_TOOLS_DIR}/../../common/development-snaps.sh
else
    echo '==> Skipping development Snap packages.'
fi

# Install Docker
echo '==> Install Docker? (Y/n)'
read DOCKER
if [ "$DOCKER" = 'y' ] || [ "$DOCKER" = 'yes' ] || [ "$DOCKER" = '' ]; then
    . ${DEVELOPMENT_TOOLS_DIR}/../common/docker.sh
else
    echo '==> Skipping Docker.'
fi

# Install Node.js
echo '==> Install Node.js? (Y/n)'
read NODEJS
if [ "$NODEJS" = 'y' ] || [ "$NODEJS" = 'yes' ] || [ "$NODEJS" = '' ]; then
    . ${DEVELOPMENT_TOOLS_DIR}/../../common/nodejs.sh
else
    echo '==> Skipping Node.js.'
fi

# Clone Angular Projects
echo '==> Clone Angular projects? (Y/n)'
read ANGULAR_PROJECTS
if [ "$ANGULAR_PROJECTS" = 'y' ] || [ "$ANGULAR_PROJECTS" = 'yes' ] || [ "$ANGULAR_PROJECTS" = '' ]; then
    . ${DEVELOPMENT_TOOLS_DIR}/../../common/angular-projects.sh
else
    echo '==> Skipping Angular projects.'
fi

# Clone Ionic Projects
echo '==> Clone Ionic projects? (Y/n)'
read IONIC_PROJECTS
if [ "$IONIC_PROJECTS" = 'y' ] || [ "$IONIC_PROJECTS" = 'yes' ] || [ "$IONIC_PROJECTS" = '' ]; then
    . ${DEVELOPMENT_TOOLS_DIR}/../../common/ionic-projects.sh
else
    echo '==> Skipping Ionic projects.'
fi

# Install Ubuntu Make
echo '==> Install Ubuntu Make? (Y/n)'
read UBUNTU_MAKE
if [ "$UBUNTU_MAKE" = 'y' ] || [ "$UBUNTU_MAKE" = 'yes' ] || [ "$UBUNTU_MAKE" = '' ]; then
    . ${DEVELOPMENT_TOOLS_DIR}/../common/ubuntu-make.sh
else
    echo '==> Skipping Ubuntu Make.'
fi

# Install Android Studio
echo '==> Install Android Studio? (Y/n)'
read ANDROID_STUDIO
if [ "$ANDROID_STUDIO" = 'y' ] || [ "$ANDROID_STUDIO" = 'yes' ] || [ "$ANDROID_STUDIO" = '' ]; then
    . ${DEVELOPMENT_TOOLS_DIR}/../common/android-studio.sh
else
    echo '==> Skipping Android Studio.'
fi
