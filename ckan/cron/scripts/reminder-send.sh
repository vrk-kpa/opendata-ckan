#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "job started: reminder-send"

# run commands
[[ "${CKAN_PLUGINS}" == *" reminder "* ]] && paster --plugin=ckanext-reminder reminder send -c ${APP_DIR}/production.ini
