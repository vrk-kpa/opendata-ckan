#!/bin/bash
set -e

# source env
. /opt/ckan_cron/.environment

echo "qa-update"

# run commands
[[ "${CKAN_PLUGINS}" == *" qa "* ]] && paster --plugin=ckanext-qa qa update -c ${APP_DIR}/production.ini
