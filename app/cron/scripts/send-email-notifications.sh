#!/bin/bash
set -e

# source env
. /srv/app/cron/.environment

echo "send-email-notifications"

# run commands
ckan -c ${APP_DIR}/production.ini post /api/action/send_email_notifications
