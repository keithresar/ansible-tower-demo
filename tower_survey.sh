#!/bin/bash

echo "Authenticating to Tower"
auth_token=`curl -d "{\"username\":\"${TOWER_USERNAME}\", \"password\":\"${TOWER_PASSWORD}\"}" \
                 -H "Content-Type: application/json" \
                 -X POST -k -s \
                 https://tower-32.lab.422long.com/api/v2/authtoken/ | jq -r .token`

echo "Authtoken: ${auth_token}"

