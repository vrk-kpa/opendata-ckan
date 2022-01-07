#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "job started: reminder-notify-expiry"

# run commands
[[ "${CKAN_PLUGINS}" == *" reminder "* ]] && paster --plugin=ckanext-reminder reminder notify-expiry -c ${APP_DIR}/production.ini
