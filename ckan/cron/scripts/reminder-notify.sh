#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "job started: reminder-notify"

# run commands
[[ "${CKAN_PLUGINS}" == *" reminder "* ]] && paster --plugin=ckanext-reminder reminder notify -c ${APP_DIR}/production.ini
