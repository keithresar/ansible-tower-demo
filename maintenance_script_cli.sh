#!/usr/bin/env bash

#
# Call Tower API via CLI to safely remove host from production
# at the start of the maintenance window
#
echo "----> Starting Maintenance"
tower-cli job launch -J 57 --monitor
echo "----> Starting Maintenance complete"


##########
echo "----> Performing actual work"
sleep 2
echo "----> Performing actual work complete"
##########


#
# Call Tower API via CLI to add host back into production
# at the concluision of the maintenance window
#
echo "----> Ending Maintenance"
tower-cli job launch -J 58 --monitor
echo "----> Ending Maintenance complete"

