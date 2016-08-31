#!/bin/bash

# Give apache user same uid as owener of wwwroot to avoid problems on upload.
if [ -d "/src" ]
	then
		userdel phpuser
		USERID=$(stat -c "%u" /src)
		usermod -u $USERID www-data
fi


# Start supervisor
/usr/bin/supervisord
