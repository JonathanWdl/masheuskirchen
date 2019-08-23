#!/bin/bash

echo 'stopping containers ...'
if [[ -n "$( docker ps -q )" ]] ; then
    docker stop $(docker ps -q)
fi