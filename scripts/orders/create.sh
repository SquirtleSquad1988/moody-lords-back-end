#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/orders"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "order": {
      "complete": "'"${COMPLETE}"'",
      "records": "'"${RECORDS}"'"
    }
  }'

echo
