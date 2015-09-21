FROM ubuntu

RUN apt-get update && apt-get install -y ruby2.0 ruby2.0-dev build-essential autoconf wget git-core

RUN wget https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.8.1-1_amd64.deb
RUN dpkg -i chefdk_0.8.1-1_amd64.deb
RUN chef generate repo /chef-repo

WORKDIR /code
