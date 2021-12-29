#
# CKAN build
#
FROM ghcr.io/keitaroinc/ckan:2.8.8-focal AS ckan_build

# switch from ckan to root user
USER root

# upgrade system + install required packages
RUN apt-get update -yq && \
    apt-get upgrade -yq && \
    apt-get install -yq \
      build-essential \
      unzip \
      zip \
      cron \
      rsync \
      postgresql-client \
      libpq-dev \
      libxslt1-dev \
      zlib1g-dev \
      libgeos-c1v5 \
      libxml2-dev \
      libssl-dev \
      libffi-dev && \
    pip install \
      jinja2-cli \
      cryptography \
      pyOpenSSL \
      ndg-httpsclient \
      pyasn1 \
      polib

# setup env vars, from base image:
# - APP_DIR=/srv/app
# - SRC_DIR=/srv/app/src
# - DATA_DIR=/srv/app/data
ENV CRON_DIR=${APP_DIR}/cron
ENV SCRIPT_DIR=${APP_DIR}/scripts
ENV TEMPLATE_DIR=${APP_DIR}/templates
ENV EXT_DIR=${APP_DIR}/extensions
ENV BASE_DIR=/srv/base
ENV WWW_DIR=/var/www

# copy app files
COPY ckan/scripts ${SCRIPT_DIR}
COPY ckan/data ${DATA_DIR}
COPY ckan/templates ${TEMPLATE_DIR}
COPY ckan/cron ${CRON_DIR}
COPY ckan/src/ckan/patches ${SRC_DIR}/ckan/patches
RUN chmod +x ${SCRIPT_DIR}/*.sh && \
    rm -f ${APP_DIR}/production.ini && \
    rm -f ${APP_DIR}/ckan.ini && \
    rm -f ${APP_DIR}/who.ini

# apply patches
RUN cd ${SRC_DIR}/ckan && \
    patch --strip=1 --input=patches/enable_multiple_image_uploads.patch && \
    patch --strip=1 --input=patches/remove-ckan-fontawesome.patch && \
    patch --strip=1 --input=patches/enforce-url-decoding.patch && \
    patch --strip=1 --input=patches/add_error_email_logger_to_flask.patch && \
    patch --strip=1 --input=patches/add_credentials_to_email_logger.patch && \
    patch --strip=1 --input=patches/remove_deprecated_resource_preview_call.patch && \
    patch --strip=1 --input=patches/remove_members_from_group_read.patch && \
    patch --strip=1 --input=patches/remove_user_activity_from_group_activity_list.patch && \
    patch --strip=1 --input=patches/optimize_group_show.patch && \
    patch --strip=1 --input=patches/optimize_template_loading.patch && \
    patch --strip=1 --input=patches/group_include_extras.patch && \
    patch --strip=1 --input=patches/group_admin_protection.patch && \
    patch --strip=1 --input=patches/remove_gravatar.patch && \
    patch --strip=1 --input=patches/json_serializable_lazyjsonobject.patch && \
    patch --strip=1 --input=patches/implement_is_required_for_image_upload.patch && \
    patch --strip=1 --input=patches/add_drafts_to_search.patch && \
    patch --strip=1 --input=patches/add_group_extra_resource_db_indices.patch && \
    patch --strip=1 --input=patches/add_cache_control_headers_to_flask.patch && \
    patch --strip=1 --input=patches/fix_invalid_search_facets_template_error.patch && \
    patch --strip=1 --input=patches/remove_stacktraces_from_http_errors.patch && \
    patch --strip=1 --input=patches/set_error_email_logging_level_to_error.patch

# install crontab
RUN chmod +x ${CRON_DIR}/scripts/*.sh && \
    crontab -u ckan ${CRON_DIR}/crontab && \
    chmod u+s /usr/sbin/cron

#
# Development image (for local development)
#
FROM ckan_build AS ckan_development

ENV DEV_MODE=true

# install ckan dev requirements
RUN pip install -r ${SRC_DIR}/ckan/dev-requirements.txt

# enable sudo for ckan user
RUN apt-get install -yq sudo && \
    adduser ckan sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# switch from root to ckan user
USER ckan

ENTRYPOINT ["/srv/app/scripts/entrypoint_ckan.sh"]

#
# Modules build (for production)
#
FROM ubuntu:focal AS modules_build

# build args
ARG SECRET_NPMRC

# install required packages
RUN apt-get update -yq && apt-get install -yq curl

# install nodejs via nodesource & frontend requirements
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get install -yq nodejs libjpeg-turbo8

# setup env vars:
ENV APP_DIR=/srv/app
ENV EXT_DIR=${APP_DIR}/extensions

# copy custom modules
RUN mkdir -p ${EXT_DIR}
COPY modules/ckanext-drupal8                ${EXT_DIR}/ckanext-drupal8/
COPY modules/ckanext-ytp_drupal             ${EXT_DIR}/ckanext-ytp_drupal/
COPY modules/ckanext-ytp_tasks              ${EXT_DIR}/ckanext-ytp_tasks/
COPY modules/ckanext-ytp_request            ${EXT_DIR}/ckanext-ytp_request/
COPY modules/ckanext-ytp_main               ${EXT_DIR}/ckanext-ytp_main/
COPY modules/ckanext-hierarchy              ${EXT_DIR}/ckanext-hierarchy/
COPY modules/ckanext-matomo                 ${EXT_DIR}/ckanext-matomo/
COPY modules/ckanext-datarequests           ${EXT_DIR}/ckanext-datarequests/
COPY modules/ckanext-harvest                ${EXT_DIR}/ckanext-harvest/
COPY modules/ckanext-report                 ${EXT_DIR}/ckanext-report/
COPY modules/ckanext-spatial                ${EXT_DIR}/ckanext-spatial/
COPY modules/ckanext-dcat                   ${EXT_DIR}/ckanext-dcat/
COPY modules/ckanext-cloudstorage           ${EXT_DIR}/ckanext-cloudstorage/
COPY modules/ckanext-scheming               ${EXT_DIR}/ckanext-scheming/
COPY modules/ckanext-fluent                 ${EXT_DIR}/ckanext-fluent/
COPY modules/ckanext-showcase               ${EXT_DIR}/ckanext-showcase/
COPY modules/ckanext-sixodp_showcase        ${EXT_DIR}/ckanext-sixodp_showcase/
COPY modules/ckanext-sixodp_showcasesubmit  ${EXT_DIR}/ckanext-sixodp_showcasesubmit/
COPY modules/ckanext-geoview                ${EXT_DIR}/ckanext-geoview/
COPY modules/ckanext-pdfview                ${EXT_DIR}/ckanext-pdfview/
COPY modules/ckanext-disqus                 ${EXT_DIR}/ckanext-disqus/
COPY modules/ckanext-reminder               ${EXT_DIR}/ckanext-reminder/
COPY modules/ckanext-archiver               ${EXT_DIR}/ckanext-archiver/
COPY modules/ckanext-qa                     ${EXT_DIR}/ckanext-qa/
COPY modules/ckanext-organizationapproval   ${EXT_DIR}/ckanext-organizationapproval/
COPY modules/ckanext-advancedsearch         ${EXT_DIR}/ckanext-advancedsearch/
COPY modules/ckanext-forcetranslation       ${EXT_DIR}/ckanext-forcetranslation/
COPY modules/ckanext-apis                   ${EXT_DIR}/ckanext-apis/
COPY modules/ckanext-prh_tools              ${EXT_DIR}/ckanext-prh_tools/
COPY modules/ckanext-openapiviewer          ${EXT_DIR}/ckanext-openapiviewer/
COPY modules/ckanext-statistics             ${EXT_DIR}/ckanext-statistics/
COPY modules/ckanext-sentry                 ${EXT_DIR}/ckanext-sentry/

# copy frontend
COPY modules/ytp-assets-common              ${EXT_DIR}/ytp-assets-common/
COPY ckan/build_frontend.sh                 ${EXT_DIR}/ytp-assets-common/build_frontend.sh
COPY ckan/package.default.json              ${EXT_DIR}/ytp-assets-common/package.default.json

# build frontend
WORKDIR ${EXT_DIR}/ytp-assets-common/
RUN chmod +x ./build_frontend.sh
RUN --mount=type=secret,id=npmrc ./build_frontend.sh

#
# Production image
#
FROM ckan_build

# copy extensions
COPY --from=modules_build ${EXT_DIR} ${EXT_DIR}

# install frontend
RUN mkdir -p ${WWW_DIR} && mv ${EXT_DIR}/ytp-assets-common/resources ${WWW_DIR}/

# install extensions
RUN ${SCRIPT_DIR}/install_extensions.sh

# lock certain python package versions for compatibility
RUN pip install flask==0.12 flask-login==0.3.0 simplejson==3.16.0 six==1.13.0 pyOpenSSL==20.0.0

# setup base directory that is used for initializing shared file systems
RUN mkdir -p ${BASE_DIR} && \
    mv ${DATA_DIR} ${BASE_DIR}/data && \
    mv ${WWW_DIR}/resources ${BASE_DIR}/resources && \
    mkdir -p ${DATA_DIR} && \
    mkdir -p ${WWW_DIR}/resources && \
    chown -R ckan:ckan ${APP_DIR} && \
    chown -R ckan:ckan ${WWW_DIR}

# switch from root to ckan user
USER ckan

ENTRYPOINT ["/srv/app/scripts/entrypoint_ckan.sh"]
