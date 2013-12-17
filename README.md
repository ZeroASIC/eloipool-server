eloipool-server
===============

eloipool install scripts for Ubuntu and Linux


Installation information is in documentation/Installation Notes.html.

You can start the install with the double click script one time.

Mostly you have to run the install script and then configure the 2 config files and then run scripts/startpool.sh.  Update the rpc password in the bitcoin.conf and eloipool/config.py.  Then change the TrackerAddr in eloipool/config.py to your wallet address.  There are a few other tweaks in the installation notes.

These scripts are written for Ubuntu 12.04, but could be adapted for other Linux distributions and probably work on Debian.  If you comment out the Ubuntu specific parts of the scripts and install bitcoind and the build dependencies on your own these scripts should still install, update, and start the server.  The ubuntu specific parts are in installpool.sh and updatepool.sh.  Comment out the lines that have the command 'sed' in them, then remove the double click script and ubuntu-install.sh.

Any and all tips are greatly appreciated and will be put toward purchasing new hardware.  They can be sent to 1F2EZrrN8Mg7cK6F3zw18A5ykocRiu4dba.

ZeroASIC
