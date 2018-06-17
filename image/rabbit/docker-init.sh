#!/bin/bash

# start
export RABBITMQ_PID_FILE=/tmp/rabbitmq.pid
rabbitmq-server &
rabbitmqctl wait /tmp/rabbitmq.pid -t 20

# configure
rabbitmqctl add_vhost $RABBITMQ_APP_VHOST
rabbitmqctl add_user $RABBITMQ_APP_USER $RABBITMQ_APP_PASSWORD
rabbitmqctl set_permissions -p $RABBITMQ_APP_VHOST $RABBITMQ_APP_USER ".*" ".*" ".*"

echo "OK" > /is-rabbit-configured

# infinite tail 
tail -f /dev/null