#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shopping_carts"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "shopping_carts": {
      "id": "'"${ID}"'"
    }
  }'
echo
