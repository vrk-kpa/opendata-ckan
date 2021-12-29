#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "ytp-dataset-update-package-deprecation"

# run commands
paster --plugin=ckanext-ytp_main ytp-dataset update_package_deprecation -c ${APP_DIR}/production.ini
