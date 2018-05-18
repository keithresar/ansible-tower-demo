#!/bin/bash

JOB_TEMPLATE="25"




echo "Authenticating to Tower"
auth_token=`curl -d "{\"username\":\"${TOWER_USERNAME}\", \"password\":\"${TOWER_PASSWORD}\"}" \
                 -H "Content-Type: application/json" \
                 -X POST -k -s \
                 https://tower-32.lab.422long.com/api/v2/authtoken/ | jq -r .token`

echo "Authtoken: ${auth_token}"



echo "Launching job ${JOB_TEMPLATE}"

auth_token=`curl -d "{\"username\":\"${TOWER_USERNAME}\", \"password\":\"${TOWER_PASSWORD}\"}" \
                 -H "Content-Type: application/json" \
                 -X GET -k -s \
                 https://tower-32.lab.422long.com/api/v2/job_templates/25/launch/ | jq -r .token`
auth_token=`curl -d "{\"username\":\"${TOWER_USERNAME}\", \"password\":\"${TOWER_PASSWORD}\"}" \
                 -H "Content-Type: application/json" \
                 -X GET -k -s \
                 https://tower-32.lab.422long.com/api/v2/job_templates/25/launch/ | jq -r .token`



