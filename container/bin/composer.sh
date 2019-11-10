#!/bin/bash

set -eu

cd "$(dirname "$0")"

if [ -t 0 ] && [ -t 1 ] ; then
  params=""
else
  params=" -T"
fi

exec ./run.sh$params exec -u www-data php composer ${@:-help}