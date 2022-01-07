#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "job started: dataset-deprecations"

# run commands
paster --plugin=ckanext-ytp_main ytp-dataset update_package_deprecation -c ${APP_DIR}/production.ini
