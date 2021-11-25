#!/bin/bash
set -e

# source env
. /opt/ckan_cron/.environment

echo "harvester-run"

# run commands
[[ "${CKAN_PLUGINS}" == *" harvest "* ]] && paster --plugin=ckanext-harvest harvester run -c ${APP_DIR}/production.ini
