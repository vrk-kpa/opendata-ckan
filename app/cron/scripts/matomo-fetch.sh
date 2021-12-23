#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "matomo-fetch"

# run commands
[[ "${MATOMO_ENABLED}" == "true" ]] && ckan -c ${APP_DIR}/production.ini matomo fetch
