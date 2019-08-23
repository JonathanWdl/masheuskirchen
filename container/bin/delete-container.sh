#!/bin/bash

echo 'deleting containers ...'
if [[ -n "$( docker ps -a -q )" ]] ; then
    docker rm -f $(docker ps -a -q)
fi