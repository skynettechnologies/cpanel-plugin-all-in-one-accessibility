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
Run the following commands as root on the terminal to install the plugin.

Step 1:

`cd /usr/local/cpanel/3rdparty/bin`

Step 2:

`rm -rf /usr/local/cpanel/base/frontend/jupiter/all_in_one_accessibility`

Step 3:

`git clone https://github.com/skynettechnologies/cpanel-plugin-all-in-one-accessibility.git`

Step 4:

`/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/3rdparty/bin/cpanel-plugin-all-in-one-accessibility/configuration`

Step 5:

`cp -r cpanel-plugin-all-in-one-accessibility/frontend/ /usr/local/cpanel/base/frontend/jupiter/all_in_one_accessibility`

`cp -r cpanel-plugin-all-in-one-accessibility/configuration /usr/local/cpanel/base/frontend/jupiter/all_in_one_accessibility`

Step 6:

`rm -rf /usr/local/cpanel/3rdparty/bin/cpanel-plugin-all-in-one-accessibility`



UNINSTALL
---------------------
Run the following commands as root on the terminal to uninstall the plugin:

Step 1:

`cd /usr/local/cpanel/scripts`

Step 2:

`/usr/local/cpanel/scripts/uninstall_plugin /usr/local/cpanel/base/frontend/jupiter/all_in_one_accessibility/configuration`

Step 3:

`rm -rf /usr/local/cpanel/base/frontend/jupiter/all_in_one_accessibility`
