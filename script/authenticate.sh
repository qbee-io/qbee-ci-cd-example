#!/usr/bin/env bash

# Get bearer token
QBEE_BEARER_TOKEN=$(curl -X POST -fsL --url "$QBEE_ENDPOINT/api/v2/login" -H 'Content-Type: application/json' -d "{\"email\":\"$QBEE_USER\",\"password\":\"$QBEE_PW\"}" | jq -r '.token')

echo export QBEE_BEARER_TOKEN="${QBEE_BEARER_TOKEN}"
