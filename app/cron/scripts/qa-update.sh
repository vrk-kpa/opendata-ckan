#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "qa-update"

# run commands
[[ "${CKAN_PLUGINS}" == *" qa "* ]] && ckan -c ${APP_DIR}/production.ini qa update
