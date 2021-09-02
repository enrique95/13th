#!/bin/bash
# this script will install the dependencies you need 
# to have in your linux machine in order to install 
# all packages in R 
# so far first steps will be just for installing in an Arch machine
# that has an AUR manager installed and later the loops will be added
# for checking Linux flavor, dependencies already installed, etc...

# developing tools for building packages in case you don't have them in 
# your minimalist distro

#if [ -f /etc/os-release ]; then
#    # freedesktop.org and systemd
#    . /etc/os-release
#    OS=$NAME
#    VER=$VERSION_ID
#elif type lsb_release >/dev/null 2>&1; then
#    # linuxbase.org
#    OS=$(lsb_release -si)
#    VER=$(lsb_release -sr)
#elif [ -f /etc/lsb-release ]; then
#    # For some versions of Debian/Ubuntu without lsb_release command
#    . /etc/lsb-release
#    OS=$DISTRIB_ID
#    VER=$DISTRIB_RELEASE
#elif [ -f /etc/debian_version ]; then
#    # Older Debian/Ubuntu/etc.
#    OS=Debian
#    VER=$(cat /etc/debian_version)
#elif [ -f /etc/SuSe-release ]; then
#    # Older SuSE/etc.
#    ...
#elif [ -f /etc/redhat-release ]; then
#    # Older Red Hat, CentOS, etc.
#    ...
#else
#    # Fall back to uname, e.g. "Linux <version>", also works for BSD, etc.
#    OS=$(uname -s)
#    VER=$(uname -r)
#fi

#if $OS="Manjaro Linux" || "Endeavor OS" || "Arco OS"

sudo pacman -S --noconfirm base-devel gcc-fortran yay

# in order to install the `units` package and dependency of `sf`
# you need to install this library from the AUR, not available in Arch repo

yay -S --noconfirm udunits

# libraries needed to install `tesseract` and `sf` packages
# only the english dictionary is needed for tesseract

sudo pacman -S --noconfirm base-devel tesseract tesseract-data-eng gdal gcc-fortran

#else
	#print("tell me what your distro is and which brand belongs to @ github.com/enrique95 so I add it to the script")
