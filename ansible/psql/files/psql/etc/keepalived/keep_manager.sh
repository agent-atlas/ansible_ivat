#!/bin/bash
TYPE=$1
NAME=$2
STATE=$3
echo "`date` $TYPE $NAME $STATE">>/tmp/keepalived.log
case $STATE in
        "MASTER")
                /bin/systemctl restart haproxy
                ;;
        "BACKUP")
                /bin/systemctl restart haproxy
                ;;
        "FAULT")
                /bin/systemctl restart haproxy
                ;;
        *)
                ;;
esac
