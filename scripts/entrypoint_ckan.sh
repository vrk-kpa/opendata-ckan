#!/bin/bash
set -e

echo "entrypoint_ckan() ..."

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
    echo "entrypoint_ckan() ... installing extensions because DEV_MODE == ${DEV_MODE} ..."
    sudo -E ./install_extensions.sh
fi

# init ckan if not done or version updated, otherwise run re-init
flock -x ${DATA_DIR}/.init-lock -c 'echo "waiting for .init-lock to be released ..."'
if [[ "$(cat ${DATA_DIR}/.init-done)" != "$CKAN_IMAGE_VERSION" ]]; then
  flock -x ${DATA_DIR}/.init-lock -c './init_ckan.sh'
else
  flock -x ${DATA_DIR}/.init-lock -c './reinit_ckan.sh'
fi

# run uwsgi or paster serve
if [[ "${DEV_MODE}" != "true" ]]; then
  echo "entrypoint_ckan() ... running in PRODUCTION mode via uwsgi ..."
  uwsgi --socket /tmp/uwsgi.sock --uid 92 --gid 92 --http :5000 --master --enable-threads --paste config:/srv/app/production.ini --paste-logger /srv/app/production.ini --lazy-apps --gevent 2000 -p 2 -L --gevent-early-monkey-patch
else
  echo "entrypoint_ckan() ... running in DEVELOPMENT mode via paster ..."
  paster serve --reload /srv/app/production.ini
fi
