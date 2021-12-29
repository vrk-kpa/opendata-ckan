#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "qa-update"

# run commands
[[ "${CKAN_PLUGINS}" == *" qa "* ]] && paster --plugin=ckanext-qa qa update -c ${APP_DIR}/production.ini
