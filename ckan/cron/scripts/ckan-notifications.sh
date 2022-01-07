#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "job started: ckan-notifications"

# run commands
paster --plugin=ckan post -c ${APP_DIR}/production.ini /api/action/send_email_notifications > /dev/null
