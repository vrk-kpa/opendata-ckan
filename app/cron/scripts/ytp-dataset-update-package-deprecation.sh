#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "ytp-dataset-update-package-deprecation"

# run commands
ckan -c ${APP_DIR}/production.ini ytp-dataset update_package_deprecation
