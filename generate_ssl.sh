#!/bin/bash

# Ensure script stops on errors
set -e

rm nginx/certs/server.key nginx/certs/server.crt

# Generate SSL certificate
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout nginx/certs/server.key \
    -out nginx/certs/server.crt

# Check if the command was successful
if [ $? -eq 0 ]; then
    echo "SSL certificate successfully generated in nginx/certs"
else
    echo "Failed to generate SSL certificate"
    exit 1
fi
