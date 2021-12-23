#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "reminder-send"

# run commands
[[ "${CKAN_PLUGINS}" == *" reminder "* ]] && ckan -c ${APP_DIR}/production.ini reminder send
