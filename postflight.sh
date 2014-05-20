#!/bin/sh
# xraystyle's Remote Management Fix https://github.com/xraystyle/apple-remote-management-fix

`syslog -s -l error "Starting Remote Admin Daemon"`

`sudo launchctl load /Library/LaunchDaemons/com.xraystyle.ardfix.plist >> /var/log/system.log`

exit 0
