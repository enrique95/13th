# this script will install the dependencies you need 
# to have in your linux machine in order to install 
# all packages in R 
# so far first steps will be just for installing in an Arch machine
# that has an AUR manager installed and later the loops will be added
# for checking Linux flavor, dependencies already installed, etc...

# developing tools for building packages in case you don't have them in 
# your minimalist distro

sudo pacman -S base-devel gcc-fortran

# in order to install the `units` package and dependency of `sf`
# you need to install this library from the AUR, not available in Arch repo

yay -S udunits

# libraries needed to install `tesseract` and `sf` packages
# only the english dictionary is needed for tesseract

sudo pacman -S base-devel tesseract tesseract-data-eng gdal gcc-fortran

