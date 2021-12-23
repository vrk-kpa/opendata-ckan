#!/bin/bash
set -e

echo "entrypoint_ckan ..."

# set env vars for base image prerun.py script
export CKAN_SQLALCHEMY_URL="postgresql://${DB_CKAN_USER}:${DB_CKAN_PASS}@${DB_HOST}/${DB_CKAN}"
export CKAN_DATASTORE_WRITE_URL="postgresql://${DB_CKAN_USER}:${DB_CKAN_PASS}@${DB_HOST}/${DB_DATASTORE_READONLY}"
export CKAN_DATASTORE_READ_URL="postgresql://${DB_DATASTORE_READONLY_USER}:${DB_DATASTORE_READONLY_PASS}@${DB_HOST}/${DB_DATASTORE_READONLY}"
export CKAN_SOLR_URL="http://${SOLR_HOST}:${SOLR_PORT}/${SOLR_PATH}"
export CKAN_SYSADMIN_NAME="${SYSADMIN_USER}"
export CKAN_SYSADMIN_PASSWORD="${SYSADMIN_PASS}"
export CKAN_SYSADMIN_EMAIL="${SYSADMIN_EMAIL}"

# install extensions (DEV_MODE)
if [[ "${DEV_MODE}" == "true" ]]; then
    echo "entrypoint_ckan - installing extensions because DEV_MODE = 'true' ..."
    sudo -E ${SCRIPT_DIR}/install_extensions.sh
fi

# init ckan if not done or version updated, otherwise run re-init
flock -x ${DATA_DIR}/.init-lock -c 'echo "waiting for .init-lock to be released ..."'
if [[ "$(cat ${DATA_DIR}/.init-done)" != "$CKAN_IMAGE_TAG" ]]; then
  flock -x ${DATA_DIR}/.init-lock -c '${SCRIPT_DIR}/init_ckan.sh'
else
  flock -x ${DATA_DIR}/.init-lock -c '${SCRIPT_DIR}/reinit_ckan.sh'
fi

# run uwsgi or ckan serve
if [[ "${DEV_MODE}" != "true" ]]; then
  echo "entrypoint_ckan - running in PRODUCTION mode via uwsgi ..."
  uwsgi --socket /tmp/uwsgi.sock --uid ckan --gid ckan --http :5000 --master --enable-threads --wsgi-file /srv/app/wsgi.py --module wsgi:application --lazy-apps --gevent 2000 -p 2 -L --gevent-early-monkey-patch --vacuum --harakiri 50 --callable application
else
  echo "entrypoint_ckan - running in DEVELOPMENT mode via ckan ..."
  ckan serve --reload /srv/app/production.ini
fi
