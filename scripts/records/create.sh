#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/records"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "record": {
      "title": "'"${TITLE}"'",
      "artist": "'"${ARTIST}"'",
      "press_date": "'"${DATE}"'",
      "price": "'"${PRICE}"'"
    }
  }'
echo
