#!/bin/bash
set -e

# source env
. /opt/ckan_cron/.environment

echo "archiver-update"

# run commands
[[ "${CKAN_PLUGINS}" == *" archiver "* ]] && paster --plugin=ckanext-archiver archiver update -c ${APP_DIR}/production.ini
