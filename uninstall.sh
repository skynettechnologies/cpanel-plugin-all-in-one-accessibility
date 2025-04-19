#!/bin/bash
THEMENAME="paper_lantern"
if [ "$1" ]
then
THEMENAME="$1"
fi

/usr/local/cpanel/scripts/uninstall_plugin /usr/local/cpanel/3rdparty/bin/cpanel-plugin-all_in_one_accessibility/configuration --theme="$THEMENAME"
rm -rf /usr/local/cpanel/3rdparty/bin/cpanel-plugin-all_in_one_accessibility/
rm -rf /usr/local/cpanel/base/frontend/$THEMENAME/all_in_one_accessibility/frontend