#!/bin/bash

URL="http://webserver"
LOG_FILE="server-check.log"

while true; do
  response_code=$(curl -s -o /dev/null -w "%{http_code}" $URL)

  if [[ $response_code != 2* && $response_code != 3* ]]; then
    echo "$(date) - Unsuccessful response. HTTP status code: $response_code" >> "$LOG_FILE"
  else
    echo "$(date) - Successful response. HTTP status code: $response_code" >> "$LOG_FILE"
  fi

  sleep 30  # Delay for 30 seconds before the next check
done