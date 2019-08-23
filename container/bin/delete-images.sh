#!/bin/bash

echo 'deleting images ...'
if [[ -n "$( docker images -q )" ]] ; then
    docker rmi -f $(docker images -q)
fi