#!/bin/bash
sudo docker run --rm -ti -v `pwd`/code:/home/taggie/code -p 8080:8080 -h taggie-web taggie/web