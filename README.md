# All In One Accessibility cPanel Plugin

CONTENTS OF THIS FILE
---------------------

 * About
 * Features
 * Installation
 * Installation

ABOUT
------------
All In One Accessibility cPanel Plugin helps hosting companies to provide a custom site builder for users of their cpanel web hosting service.

FEATURES
---------------------
* Installs a global All In One Accessibility to cPanel to enable custom features
* Auto-install All In One Accessibility to new cpanel accounts
* Puts necessary icons in the cPanel interfaces so users can easily manage their website and publish new sites through the cPanel.

INSTALLATION
---------------------
Run install.sh on servers that run cPanel & WHM version 11.44 and later. install.sh must be run as root to work. Script copies installation files to /usr/local/cpanel/3rdparty/bin/all_in_one_accessibility/plugin/

UNINSTALL
---------------------
Run uninstall.sh on the server to uninstall All In One Accessibility cPanel Plugin. Script is usually located on /usr/local/cpanel/3rdparty/bin/all_in_one_accessibility/plugin/uninstall.sh. Run the following commands as root on the terminal to uninstall the plugin:

`UNINSTALLER="usr/local/cpanel/3rdparty/bin/all_in_one_accessibility/plugin/uninstall.sh"`

`chmod 755 $UNINSTALLER`

`$UNINSTALLER`