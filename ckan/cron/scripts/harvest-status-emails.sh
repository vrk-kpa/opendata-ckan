#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "job started: harvest-status-emails"

# run commands
paster --plugin=ckanext-ytp_main opendata-harvest send-status-emails -c ${APP_DIR}/production.ini
