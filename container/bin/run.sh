#!/usr/bin/env bash
set -eu

cd "$(dirname "$0")/../"

export cUID=$(id -u ${USER})
export gUID=$(id -g ${USER})

set -x

COMPOSE_PROJECT_NAME=masheuskirchen COMPOSE_FILE=docker-compose.yml exec docker-compose ${@:-up -d}
