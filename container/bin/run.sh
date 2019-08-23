#!/usr/bin/env bash
set -eu

cd "$(dirname "$0")/../"

# Export dynamically the host user id and group-id
export cUID=$(id -u ${USER})
export cGID=$(id -g ${USER})

set -x

COMPOSE_PROJECT_NAME=masheuskirchen COMPOSE_FILE=docker-compose.yml exec docker-compose ${@:-up -d}
