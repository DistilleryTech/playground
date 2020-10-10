#!/bin/bash
read -p 'Input domain name: ' domainname
read -p 'Password: ' password
curl -X POST -H 'Content-Type: application/json' https://$domainname/initialize -d '{"username": "admin", "password": "$password"}'
