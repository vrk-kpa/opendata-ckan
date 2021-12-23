#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "harvester-run"

# run commands
[[ "${CKAN_PLUGINS}" == *" harvest "* ]] && ckan -c ${APP_DIR}/production.ini harvester run
