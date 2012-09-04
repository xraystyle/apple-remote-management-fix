#!/bin/sh

DEPLOYHERE="/Library/Scripts/remoteadmin"

if [ ! -d $DEPLOYHERE ]; then
	
	mkdir $DEPLOYHERE
	
fi

`echo "Spinning up remote access before loading daemon..." >> /var/log/system.log`

`sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -configure -access -on -privs -all -users ADMINACCOUNT > /dev/null`

`sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate > /dev/null`

exit 0


	