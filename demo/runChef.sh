#!/bin/bash
cd /code
berks install
berks vendor /chef-repo/cookbooks
rm -rf /chef-repo/data_bags
cp -r /code/data_bags /chef-repo/data_bags
chef-solo -c /code/solo.rb -j /code/runlist.json
