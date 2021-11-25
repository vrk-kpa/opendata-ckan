#!/bin/bash
set -e

# source env
. /opt/ckan_cron/.environment

echo "send-email-notifications"

# run commands
paster --plugin=ckan post -c ${APP_DIR}/production.ini /api/action/send_email_notifications > /dev/null
