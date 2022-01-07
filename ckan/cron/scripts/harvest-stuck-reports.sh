#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "job started: harvest-stuck-reports"

# run commands
paster --plugin=ckanext-ytp_main opendata-harvest send-stuck-runs-report -c ${APP_DIR}/production.ini
