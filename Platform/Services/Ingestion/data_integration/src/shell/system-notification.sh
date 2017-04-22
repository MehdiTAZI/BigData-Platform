#!/usr/bin/env bash

echo " the oozie workflow executed with no error"

echo "with user: 'whoami'"
echo "On the following host: 'hostname'"
echo "in the following path : 'pwd'"

# use kafka producer to send message on the topic : "system-workflow-finished" in order to inform the whole system that the data are ready
