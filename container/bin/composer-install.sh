#!/bin/bash

# get php container id
container=$(docker ps -qf "name=t3apprenticeship_php_1")

# run composer install as non root user
docker exec -it $container composer install
