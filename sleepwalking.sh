#!/bin/bash

#Test script to start and stop another script.  Practice for Case statements.

case $1 in
	start )
       echo "Starting sleepwalk.";
       /tmp/sleepwalkingserver &
       ;;
    stop )
      echo "Stopping sleepwalk.";
      kill -9 $(cat /tmp/sleep­walking­server.pid);
      ;;
    * )
     echo "Usage sleepwalking start|stop.";
     exit 1;
esac
exit 0;   