#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "job started: ckan-refresh"

# run commands
paster --plugin=ckan tracking update -c ${APP_DIR}/production.ini
paster --plugin=ckan search-index rebuild -r -c ${APP_DIR}/production.ini
