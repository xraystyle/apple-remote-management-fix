#!/bin/sh
# xraystyle's Remote Management Fix https://github.com/xraystyle/apple-remote-management-fix

`echo "Starting Remote Admin Daemon " >> /var/log/system.log`

`sudo launchctl load /Library/LaunchDaemons/com.xraystyle.ardfix.plist >> /var/log/system.log`

exit 0
