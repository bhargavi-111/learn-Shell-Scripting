#!/bin/bash

echo "===== SERVICE MONITORING ====="

for service in ssh cron rsyslog
do

    if systemctl is-active --quiet "$service"
    then
        echo "$service is RUNNING"
    else
        echo "$service is NOT RUNNING"
    fi

done

echo "===== MONITORING COMPLETED ====="