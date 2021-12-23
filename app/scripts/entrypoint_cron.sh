#!/bin/bash
set -e

echo "entrypoint_cron ..."

# apply templates
jinja2 ${TEMPLATE_DIR}/production.ini.j2 -o ${APP_DIR}/production.ini
jinja2 ${TEMPLATE_DIR}/who.ini.j2 -o ${APP_DIR}/who.ini
jinja2 ${TEMPLATE_DIR}/datastore_permissions.sql.j2 -o ${SCRIPT_DIR}/datastore_permissions.sql

# export environment for cron
printenv | sed 's/=\(.*\)/="\1"/' > ${CRON_DIR}/.environment

# run cron
cron -f
