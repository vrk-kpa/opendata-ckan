#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "tracking-update"

# run commands
ckan -c ${APP_DIR}/production.ini tracking update
ckan -c ${APP_DIR}/production.ini search-index rebuild -r
