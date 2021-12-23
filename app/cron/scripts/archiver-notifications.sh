#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "archiver-notifications"

# run commands
[[ "${CKAN_PLUGINS}" == *" archiver "* ]] && ckan -c ${APP_DIR}/production.ini archiver send_broken_link_notification
