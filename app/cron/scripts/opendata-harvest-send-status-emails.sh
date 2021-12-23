#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "opendata-harvest send-status-emails"

# run commands
ckan -c ${APP_DIR}/production.ini opendata-harvest send-status-emails
