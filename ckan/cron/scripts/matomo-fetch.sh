#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "matomo-fetch"

# run commands
[[ "${MATOMO_ENABLED}" == "true" ]] && paster --plugin=ckanext-matomo matomo fetch -c ${APP_DIR}/production.ini
