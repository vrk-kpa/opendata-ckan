#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "job started: prh-start"

# run commands
paster --plugin=ckanext-prh prh-tools fetch-data ${CKAN_STORAGE_PATH}/prh --package_id=yritykset -c ${APP_DIR}/production.ini
