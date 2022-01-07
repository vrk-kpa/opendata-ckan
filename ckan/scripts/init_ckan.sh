#!/bin/bash
set -e

echo "init_ckan ..."

# init filesystems
. ${SCRIPT_DIR}/init_filesystems.sh

# apply templates
jinja2 ${TEMPLATE_DIR}/production.ini.j2 -o ${APP_DIR}/production.ini
jinja2 ${TEMPLATE_DIR}/who.ini.j2 -o ${APP_DIR}/who.ini
jinja2 ${TEMPLATE_DIR}/datastore_permissions.sql.j2 -o ${SCRIPT_DIR}/datastore_permissions.sql

# run prerun script that checks connections and inits db
python prerun.py || { echo '[CKAN prerun] FAILED. Exiting...' ; exit 1; }

# minify JS files
paster --plugin=ckan minify ${SRC_DIR}/ckan/public/base/javascript -c ${APP_DIR}/production.ini

# execute SQL scripts
cat ${SCRIPT_DIR}/datastore_permissions.sql | PGPASSWORD="${DB_CKAN_PASS}" psql -d ${DB_DATASTORE_READONLY} -h ${DB_HOST} -U ${DB_CKAN_USER} --set ON_ERROR_STOP=1

# init ckan extensions
echo "init ckan extensions ..."
paster --plugin=ckanext-ytp_main ytp-facet-translations ${EXT_DIR}/ckanext-ytp_main/ckanext/ytp/i18n -c ${APP_DIR}/production.ini
paster --plugin=ckanext-sixodp_showcase sixodp_showcase create_platform_vocabulary -c ${APP_DIR}/production.ini
paster --plugin=ckanext-sixodp_showcase sixodp_showcase create_showcase_type_vocabulary -c ${APP_DIR}/production.ini
paster --plugin=ckan db migrate-filestore -c ${APP_DIR}/production.ini

# init ckan extension databases
echo "init ckan extension databases ..."
paster --plugin=ckanext-ytp_request initdb -c ${APP_DIR}/production.ini
paster --plugin=ckanext-harvest harvester initdb -c ${APP_DIR}/production.ini
paster --plugin=ckanext-spatial spatial initdb -c ${APP_DIR}/production.ini
[[ "${CKAN_PLUGINS}" == *" archiver "* ]]     && paster --plugin=ckanext-archiver archiver init -c ${APP_DIR}/production.ini
[[ "${CKAN_PLUGINS}" == *" qa "* ]]           && paster --plugin=ckanext-qa qa init -c ${APP_DIR}/production.ini
paster --plugin=ckanext-report report initdb -c ${APP_DIR}/production.ini
paster --plugin=ckanext-matomo matomo init_db -c ${APP_DIR}/production.ini
paster --plugin=ckanext-cloudstorage cloudstorage initdb -c ${APP_DIR}/production.ini
[[ "${CKAN_PLUGINS}" == *" rating "* ]]       && paster --plugin=ckanext-rating rating init -c ${APP_DIR}/production.ini
paster --plugin=ckanext-reminder reminder init -c ${APP_DIR}/production.ini

# refresh solr search indexes
echo "rebuild solr search indexes ..."
paster --plugin=ckan search-index rebuild -o -c ${APP_DIR}/production.ini

# set init flag to done
echo "$CKAN_IMAGE_TAG" > ${DATA_DIR}/.init-done
