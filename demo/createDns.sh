#!/bin/bash
knife digital_ocean domain record create \
    --type A \
    --domain-id www.robertabittle.com \
    --name '@' \
    --data 45.55.73.240
