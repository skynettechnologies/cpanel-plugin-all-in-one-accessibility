#!/bin/bash
THEMENAME="jupiter"
if [ "$1" ]
then
THEMENAME="$1"
fi

FRONTEND_BASE="/usr/local/cpanel/base/frontend/$THEMENAME/all_in_one_accessibility"
ALLINONEACCESSIBILITY_BASE="/usr/local/cpanel/3rdparty/bin/cpanel-plugin-all_in_one_accessibility/plugin"
PLUGIN_BASE="$ALLINONEACCESSIBILITY_BASE/frontend"

#   remove previous
rm -rf all_in_one_accessibility-cpanel-plugin
rm -rf "$FRONTEND_BASE"
rm -rf "$ALLINONEACCESSIBILITY_BASE"

mkdir -p "$FRONTEND_BASE"
mkdir -p "$PLUGIN_BASE"

#   download plugin
#git clone https://github.com/skynettechnologies/cpanel-plugin-all-in-one-accessibility.git


#   DUMP everything
cp -r /* "$ALLINONEACCESSIBILITY_BASE"

#   copy frontend
cp -r frontend/* "$PLUGIN_BASE"
ln -s "$PLUGIN_BASE" "$FRONTEND_BASE"

#   do hook for new accounts auto-install
#INSTALL_FILENAME="all_in_one_accessibility-cpanel-plugin/new-account-auto-install.sh"
#chmod 755 $INSTALL_FILENAME
#$INSTALL_FILENAME

#   uninstall
/usr/local/cpanel/scripts/uninstall_plugin /usr/local/cpanel/3rdparty/bin/cpanel-plugin-all_in_one_accessibility/plugin/configuration --theme="$THEMENAME"

#   install
/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/3rdparty/bin/cpanel-plugin-all_in_one_accessibility/plugin/configuration --theme "$THEMENAME"

#   make required files executable
#CRON_SCRIPT_PATH="/usr/local/cpanel/3rdparty/bin/cpanel-plugin-all_in_one_accessibility/plugin/cron.sh"
#UPDATE_SCRIPT_PATH="/usr/local/cpanel/3rdparty/bin/cpanel-plugin-all_in_one_accessibility/plugin/update.sh"
INSTALLER_SCRIPT_PATH="/usr/local/cpanel/3rdparty/bin/cpanel-plugin-all_in_one_accessibility/plugin/install.sh"
UNINSTALLER_SCRIPT_PATH="/usr/local/cpanel/3rdparty/bin/cpanel-plugin-all_in_one_accessibility/plugin/uninstall.sh"

#chmod 755 $CRON_SCRIPT_PATH
#chmod 755 $UPDATE_SCRIPT_PATH
chmod 755 $INSTALLER_SCRIPT_PATH
chmod 755 $UNINSTALLER_SCRIPT_PATH

#   do cron
#   some servers remove hook so we install 
#CRON_JOB="*/30 * * * * $CRON_SCRIPT_PATH > /dev/null 2>&1"
#cat <(fgrep -i -v "$CRON_SCRIPT_PATH" <(crontab -l)) <(echo "$CRON_JOB") | crontab -
