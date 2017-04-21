#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/orders/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "order": {
      "records": "'"${RECORDS}"'",
      "complete": "'"${COMPLETE}"'"
    }
  }'

echo
