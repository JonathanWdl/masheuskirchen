#!/bin/bash

echo "Choose between options:"
echo "[1] Build Container"
echo "[2] Run Container"
echo "[3] Stop Container"
echo "[4] Composer install"
echo "[5] Backup Database"
echo "[6] Import Database"
echo "[7] System Prune"
echo "[8] Delete Container"
echo "[9] Delete Images"
echo "[10] Delete Network"
echo "[11] Delete Volumes"
echo "[12] Clean All"

function main {
    while true; do
        read -p "Enter your nuber of choice:" option
        case $option in
            1 ) build-run-down "build"; break;;
            2 ) build-run-down "up -d"; break;;
            3 ) build-run-down "down"; break;;
            4 ) composer-install; break;;
            5 ) backup-database; break;;
            6 ) import-database; break;;
            7 ) system-prune; break;;
            8 ) delete-container; break;;
            9 ) delete-images; break;;
            10 ) delete-network; break;;
            11 ) delete-volumes; break;;
            12 ) read -p "Are you sure to stop and delete all container and images? [y,n]" choice
                case $choice in
                    [Nn] ) echo $choice; break;;
                    [Yy] ) stop-container
                            delete-container
                            delete-images
                            delete-network
                            delete-volumes
                            system-prune; break;;
                    * )     echo "Please enter y or n."
                esac; break;;
        esac
    done
}

function build-run-down () {
    set -eu
    cd "$(dirname "$0")/../"
    export cUID=$(id -u ${USER})
    export cGID=$(id -g ${USER})
    set -x
    COMPOSE_PROJECT_NAME=masheuskirchen COMPOSE_FILE=docker-compose.yml exec docker-compose $1
}
function delete-container {
    # Delete container
    echo "Checking for existing container ..."
    if [[ -n "$( docker ps -a -q )" ]] ; then
        echo "deleting container ..."
        docker rm -f $(docker ps -a -q)
    else 
        echo "No existing container found!"
    fi
}
function delete-images {
    # Delete images
    echo "Checking for existing images ..."
    if [[ -n "$( docker images -q )" ]] ; then
        echo "deleting images ..."
        docker rmi -f $(docker images -q)
    else 
        echo "No images found!"
    fi
}
function delete-network {
    # Delete Network
    echo "Checking for networks ..."
    if [[ -n "$( docker network ls -q )" ]] ; then
        echo "deleting network ..."
        docker network rm $(docker network ls -q)
    else   
        echo "No networks found!"
    fi
}
function delete-volumes {
    # Delete Volumes
    echo "Checking for volumes ..."
    if [[ -n "$( docker volume ls -q )" ]] ; then
        echo "deleteing volumes ..."
        docker volume rm $(docker volume ls -q)
    else 
        echo "No volumes found!"
    fi
}
function system-prune {
    # Docker Prune
    echo "System Prune ..."
    docker system prune -af || true
}
function backup-database {
    # get container id
    container=$(docker ps -qf "name=masheuskirchen_db_1")
    # Backup database
    docker exec $container /usr/bin/mysqldump -u root --password=typo3 typo3 > $(dirname "$0")/../../data/typo3_backup.sql
}
function import-database {
    # get container id
    container=$(docker ps -qf "name=masheuskirchen_db_1")
    # path to backupfile
    file=$(dirname "$0")/../../data/typo3_backup.sql
    if [ -f $file ]; then
        # import database
        cat $file | docker exec -i $container /usr/bin/mysql -u root --password=typo3 typo3
    else
        echo "Database Backup does not exist!"
    fi
}
function composer-install {
    # get container id and install typo3 in container
    container=$(docker ps -qf "name=masheuskirchen_php_1")
    docker exec -it $container composer install
}

main;