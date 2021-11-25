#!/bin/bash
set -e

# source env
. /opt/ckan_cron/.environment

echo "opendata-harvest-send-status-emails"

# run commands
paster --plugin=ckanext-ytp_main opendata-harvest send-status-emails -c ${APP_DIR}/production.ini
