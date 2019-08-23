#!/bin/bash

# get container id
container=$(docker ps -qf "name=t3apprenticeship_db_1")

# Backup database
docker exec $container mysqldump -u typo3 --password=typo3 typo3 > $(dirname "$0")/../../data/typo3_backup.sql