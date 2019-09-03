#!/usr/bin/env bash
set -eu

cd "$(dirname "$0")/../"

set -x

COMPOSE_PROJECT_NAME=masheuskirchen COMPOSE_FILE=mac.docker-compose.yml exec docker-compose ${@:-up -d}
