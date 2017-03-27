#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/records/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "record": {
      "title": "'"${TITLE}"'",
      "artist": "'"${ARTIST}"'",
      "press_date": "'"${DATE}"'",
      "price": "'"${PRICE}"'",
      "quantity": "'"${QUANTITY}"'"
    }
  }'

echo
