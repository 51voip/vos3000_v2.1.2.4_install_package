#!/bin/bash
sed -i '/$RET = 0/a\\t\tsleep 5\n\t\tif [ -f $PIDFILE ]; then\n\t\t\tPID=`cat $PIDFILE`\n\t\t\tif [ -d /proc/$PID ]; then\n\t\t\t\tkill -HUP $PID\n\t\t\tfi\n\t\tfi' /etc/init.d/mbx3000d
sed -i '/"$?" = 0/a\\t\tsleep 5\n\t\tif [ -f $CMPIDFILE ]; then\n\t\t\tPID=`cat $CMPIDFILE`\n\t\t\tif [ -d /proc/$PID ]; then\n\t\t\t\tkill -HUP $PID\n\t\t\tfi\n\t\tfi' /etc/init.d/ivrd
reboot