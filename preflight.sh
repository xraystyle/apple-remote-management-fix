#!/bin/sh
# xraystyle's Remote Management Fix https://github.com/xraystyle/apple-remote-management-fix

DEPLOYHERE="/Library/Scripts/remoteadmin"

if [ ! -d $DEPLOYHERE ]; then
	
	mkdir $DEPLOYHERE
	
fi

`syslog -s -l error "Spinning up remote access before loading daemon..."`

`sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -configure -access -on -privs -all -users ADMINACCT > /dev/null`

`sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate > /dev/null`

exit 0


	