#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "job started: archiver-update"

# run commands
[[ "${CKAN_PLUGINS}" == *" archiver "* ]] && paster --plugin=ckanext-archiver archiver update -c ${APP_DIR}/production.ini
