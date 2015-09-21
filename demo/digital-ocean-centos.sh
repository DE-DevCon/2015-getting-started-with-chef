#!/bin/bash
knife digital_ocean droplet create \
    --server-name demo-centos \
    --run-list 'role[demo-centos]' \
    --ssh-keys 802530 \
    --identity-file ~/.ssh/id_rsa \
    --image centos-7-0-x64 \
    --location nyc3 \
    --size 1gb \
    --bootstrap \
    --no-host-key-verify \
    --yes \
    --config .chef/knife.rb
