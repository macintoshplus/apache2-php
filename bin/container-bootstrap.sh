#!/bin/bash

# Give apache user same uid as owener of wwwroot to avoid problems on upload.
if [ -d "/sources" ]
	then
		userdel phpuser
		USERID=$(stat -c "%u" /sources)
		usermod -u $USERID www-data
fi


# Start supervisor
/usr/bin/supervisord
