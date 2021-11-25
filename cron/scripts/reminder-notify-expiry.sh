#!/bin/bash
set -e

# source env
. /opt/ckan_cron/.environment

echo "reminder-notify-expiry"

# run commands
[[ "${CKAN_PLUGINS}" == *" reminder "* ]] && paster --plugin=ckanext-reminder reminder notify-expiry -c ${APP_DIR}/production.ini
