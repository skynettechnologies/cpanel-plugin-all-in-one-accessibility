#!/bin/bash
#THEMENAME="jupiter"
#echo "p1 $1"
#if [$1]
#then
#  THEMENAME=$1
#fi
#FRONTEND_BASE="/usr/local/cpanel/base/frontend/jupiter/all_in_one_accessibility"
#install
/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/3rdparty/bin/cpanel-plugin-all-in-one-accessibility/configuration
#copy_frontend
cp -r "/usr/local/cpanel/3rdparty/bin/cpanel-plugin-all-in-one-accessibility/frontend" "/usr/local/cpanel/base/frontend/jupiter/all_in_one_accessibility"

