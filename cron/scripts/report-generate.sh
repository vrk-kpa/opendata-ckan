#!/bin/bash
set -e

# source env
. /opt/ckan_cron/.environment

echo "report-generate"

# run commands
[[ "${CKAN_PLUGINS}" == *" report "* ]] && paster --plugin=ckanext-report report generate -c ${APP_DIR}/production.ini
