#!/bin/bash

gitLabel=`git branch | grep \* | cut -d ' ' -f2`
docker build --build-arg debug_mode=--no-dev -t mambix/node-puppetter:$gitLabel .
docker push mambix/node-puppetter:$gitLabel
