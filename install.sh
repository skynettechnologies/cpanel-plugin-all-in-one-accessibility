#!/bin/bash
THEMENAME="jupiter"
if [ "$1" ]
then
THEMENAME="$1"
fi

#   install
/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/3rdparty/bin/cpanel-plugin-all-in-one-accessibility/configuration --theme="$THEMENAME"
#   copy frontend
cp -r "/usr/local/cpanel/3rdparty/bin/cpanel-plugin-all-in-one-accessibility/frontend" "/usr/local/cpanel/base/frontend/$THEMENAME/all_in_one_accessibility"

#chmod 755 /usr/local/cpanel/base/frontend/$THEMENAME/all_in_one_accessibilit
