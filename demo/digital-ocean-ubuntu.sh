#!/bin/bash
knife digital_ocean droplet create \
    --server-name demo-ubuntu \
    --run-list 'role[demo]' \
    --ssh-keys 802530 \
    --identity-file ~/.ssh/id_rsa \
    --image ubuntu-14-04-x64 \
    --location nyc3 \
    --size 512mb \
    --bootstrap \
    --no-host-key-verify \
    --yes \
    --config .chef/knife.rb
