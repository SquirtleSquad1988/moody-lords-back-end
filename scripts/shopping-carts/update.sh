#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shopping_carts/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "shopping_carts": {
      "id": "'"${ID}"'"
    }
  }'

echo
