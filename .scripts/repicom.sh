#!/bin/bash
# Script to kill picom if its running and restart it
######################################################

APP_ID=$(ps -ef | grep picom | grep -v grep | awk '{print $2}')

echo "Instance $APP_ID"
if [ -n "${APP_ID}" ]; then
    echo "Stopping instance $APP_ID"
    kill $APP_ID   (or kill -9 $APP_ID)
fi
