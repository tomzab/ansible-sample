#!/bin/bash

cd "$(dirname "$0")"

if [ "$1" = "prd" ]; then
  echo "Deploying to production"
  ansible-playbook production.yml
else
  echo "Deploying to staging"
  ansible-playbook staging.yml
fi
