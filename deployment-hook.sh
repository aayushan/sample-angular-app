#!/bin/bash

# Check if the event is a push event on the main branch
if [ "$1" = "push" ] && [ "$2" = "main" ]; then
  # Perform version checking and notification logic here
  echo "Deployment hook executed on push event to main branch "
  touch hello.txt
else
  echo "Deployment hook skipped. Event type: $1, Branch: $2"
fi
