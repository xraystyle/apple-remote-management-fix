#!/bin/sh

`echo "Starting Remote Admin Daemon " >> /var/log/system.log`

`sudo launchctl load /Library/LaunchDaemons/com.xraystyle.ardfix.plist >> /var/log/system.log`

exit 0
