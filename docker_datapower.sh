#!/bin/bash

docker run \
          -v $PWD/local:/drouter/local \
          -e DATAPOWER_ACCEPT_LICENSE=true \
          -e DATAPOWER_INTERACTIVE=true \
          -p 5550:5550 \
          -p 6000-6999:6000-6999 \
          -p 9090:9090 \
          -p 9022:22 \
          -p 5554:5554 \
          -p 8000-8010:8000-8010 \
          --name datapower \
          -it \
          --rm \
          kmetrak/datapower $@
