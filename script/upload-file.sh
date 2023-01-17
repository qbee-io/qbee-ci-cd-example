#!/usr/bin/env bash

SOURCE=$1
DESTINATION=$2

echo "Uploading $SOURCE to $DESTINATION (wd: $(pwd))"

if [[ ! -f $SOURCE ]]; then
  echo "ERROR: Source does not exist"
fi

# Delete file (if exists)
curl -XDELETE -sL -o /dev/null -d "path=$DESTINATION" -H "Content-type: application/x-www-form-urlencoded" \
  --url "$QBEE_ENDPOINT/api/v2/file" -H "Authorization: Bearer $QBEE_BEARER_TOKEN" || true

# Upload file
curl -XPOST -sfL -H "Content-Type:multipart/form-data" -F "path=$(dirname $DESTINATION)/" -F "file=@$SOURCE" \
  --url "$QBEE_ENDPOINT/api/v2/file" -H "Authorization: Bearer $QBEE_BEARER_TOKEN"
