#!/bin/bash
PROFILE_NAME=${PROFILE_NAME:-"AppSrv01"}
SERVER_NAME=${SERVER_NAME:-"server1"}

if [ -e /war/application.war ]
then
    echo "Installing war..."
	/scripts/start-server.sh
	/opt/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/wsadmin.sh -lang jython -user wsadmin -password keensoft -f /scripts/install-application.jython
else
    echo "Application war not found."
fi