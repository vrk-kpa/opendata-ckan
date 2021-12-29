#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "opendata-harvest-send-stuck-runs-report"

# run commands
paster --plugin=ckanext-ytp_main opendata-harvest send-stuck-runs-report -c ${APP_DIR}/production.ini
