# opendata-ckan 
[![Build](https://github.com/vrk-kpa/opendata-ckan/actions/workflows/main.yml/badge.svg)](https://github.com/vrk-kpa/opendata-ckan/actions/workflows/main.yml)

CKAN docker image for open data portal (avoindata.fi). 

## Build arguments

| key | valid values | default value |
| --- | ------------ | ------------- |
| SECRET_NPMRC | any string | - |
| DYNATRACE_ENABLED | 0 or 1 | 0 |

## Environment variables

| key | config affected | variable affected | default value |
| --- | --------------- | ----------------- | ------------- |
| CKAN_DRUPAL_SITE_URL | production.ini | `ckanext.drupal8.site_url` | - |
| CKAN_BEAKER_SESSION_SECRET | production.ini | `beaker.session.secret` | - |
| CKAN_APP_INSTANCE_UUID | production.ini | `app_instance_uuid` | - |
| CKAN_SITE_ID | production.ini | `ckan.site_id` | - |
| CKAN_PLUGINS_DEFAULT | production.ini | `ckan.plugins` | - |
| CKAN_PLUGINS | production.ini | `ckan.plugins` | - |
| CKAN_STORAGE_PATH | production.ini | `multiple vars with '_url' postfix` | - |
| CKAN_ARCHIVER_PATH | production.ini | `ckanext-archiver.archive_dir` | - |
| CKAN_WEBASSETS_PATH | production.ini | `ckan.webassets.path` | - |
| CKAN_ARCHIVER_SEND_NOTIFICATION_EMAILS_TO_MAINTAINERS | production.ini | `ckanext-archiver.send_notification_emails_to_maintainers` | - |
| CKAN_ARCHIVER_EXEMPT_DOMAINS_FROM_BROKEN_LINK_NOTIFICATIONS | production.ini | `ckanext-archiver.exempt_domains_from_broken_link_notifications` | - |
| CKAN_HARVESTER_STATUS_RECIPIENTS | production.ini | `ckanext.ytp.harvester_status_recipients` | - |
| CKAN_HARVESTER_FAULT_RECIPIENTS | production.ini | `ckanext.ytp.fault_recipients` | - |
| CKAN_HARVESTER_INSTRUCTION_URL | production.ini | `ckanext.ytp.harvester_instruction_url` | - |
| CKAN_MAX_RESOURCE_SIZE | production.ini | `ckan.max_resource_size` | - |
| CKAN_SHOW_POSTIT_DEMO | production.ini | `ckanext.ytp.theme.show_postit_demo` | - |
| CKAN_PROFILING_ENABLED | production.ini | `filter-with` | - |
| CKAN_LOG_LEVEL | production.ini | `logger_ckan.level` | - |
| CKAN_EXT_LOG_LEVEL | production.ini | `logger_ckanext.level` | - |
| CKAN_CLOUDSTORAGE_ENABLED | production.ini | `ckan.plugins` | - |
| CKAN_CLOUDSTORAGE_DRIVER | production.ini | `ckanext.cloudstorage.driver` | - |
| CKAN_CLOUDSTORAGE_DRIVER_OPTIONS | production.ini | `ckanext.cloudstorage.driver_options` | - |
| CKAN_CLOUDSTORAGE_CONTAINER_NAME | production.ini | `ckanext.cloudstorage.container_name` | - |
| CKAN_CLOUDSTORAGE_USE_SECURE_URLS | production.ini | `ckanext.cloudstorage.use_secure_urls` | - |
| CKAN_CLOUDSTORAGE_AWS_USE_BOTO3_SESSIONS | production.ini | `ckanext.cloudstorage.aws_use_boto3_sessions` | - |
| CKAN_IMAGE_TAG | entrypoint_ckan.sh, init_ckan.sh | `.init-done` | - |
| CKAN_HOST | production.ini | `ckan.datapusher.callback_url_base` | - |
| CKAN_PORT | production.ini | `ckan.datapusher.callback_url_base` | - |
| DATAPUSHER_HOST | production.ini | `ckan.datapusher.url` | - |
| DATAPUSHER_PORT | production.ini | `ckan.datapusher.url` | - |
| REDIS_HOST | production.ini | `ckan.redis.url` | - |
| REDIS_PORT | production.ini | `ckan.redis.url` | - |
| REDIS_DB | production.ini | `ckan.redis.url` | - |
| SOLR_HOST | production.ini | `solr_url` | - |
| SOLR_PORT | production.ini | `solr_url` | - |
| SOLR_PATH | production.ini | `solr_url` | - |
| DB_HOST | production.ini | `multiple vars` | - |
| DB_CKAN | production.ini | `multiple vars` | - |
| DB_CKAN_USER | production.ini | `multiple vars` | - |
| DB_CKAN_PASS | production.ini | `multiple vars` | - |
| DB_DATASTORE_READONLY | production.ini | `ckan.datastore.write_url`, `ckan.datastore.read_url` | - |
| DB_DATASTORE_READONLY_USER | production.ini | `ckan.datastore.read_url` | - |
| DB_DATASTORE_READONLY_PASS | production.ini | `ckan.datastore.read_url` | - |
| DB_DRUPAL | production.ini | `ckanext.ytp.drupal.connection`, `ckanext.drupal8.connection` | - |
| DB_DRUPAL_USER | production.ini | `ckanext.ytp.drupal.connection`, `ckanext.drupal8.connection` | - |
| DB_DRUPAL_PASS | production.ini | `ckanext.ytp.drupal.connection`, `ckanext.drupal8.connection` | - |
| DOMAIN_NAME | production.ini | `multiple vars` | - |
| SECONDARY_DOMAIN_NAME | production.ini | `multiple vars` | - |
| SITE_PROTOCOL | production.ini | `multiple vars` | - |
| ROLES_CKAN_ADMIN | production.ini | `ckanext.drupal8.sysadmin_role` | - |
| SYSADMIN_USER | entrypoint_ckan.sh | `CKAN_SYSADMIN_NAME` | - |
| SYSADMIN_PASS | entrypoint_ckan.sh | `CKAN_SYSADMIN_PASSWORD` | - |
| SYSADMIN_EMAIL | entrypoint_ckan.sh | `CKAN_SYSADMIN_EMAIL` | - |
| SMTP_HOST | production.ini | `smtp.server`, `smtp_server` | - |
| SMTP_USERNAME | production.ini | `smtp.user`, `smtp_username` | - |
| SMTP_PASS | production.ini | `smtp.password`, `smtp_password` | - |
| SMTP_FROM | production.ini | `smtp.mail_from` | - |
| SMTP_TO | production.ini | `email_to` | - |
| SMTP_FROM_ERROR | production.ini | `error_email_from`, `from_address` | - |
| SMTP_PROTOCOL | production.ini | `smtp.starttls`, `smtp_use_tls` | - |
| SMTP_PORT | production.ini | `smtp.server`, `smtp_server` | - |
| MATOMO_ENABLED | production.ini | `ckan.plugins` | - |
| MATOMO_SITE_ID | production.ini | `ckanext.matomo.site_id` | - |
| MATOMO_DOMAIN | production.ini | `ckanext.matomo.domain` | - |
| MATOMO_SCRIPT_DOMAIN | production.ini | `ckanext.matomo.script_domain` | - |
| MATOMO_TOKEN | production.ini | `ckanext.matomo.token_auth` | - |
| RECAPTCHA_PUBLIC_KEY | production.ini | `ckanext.sixodp_showcasesubmit.recaptcha_sitekey` | - |
| RECAPTCHA_PRIVATE_KEY | production.ini | `ckanext.sixodp_showcasesubmit.recaptcha_secret` | - |
| DISQUS_DOMAIN | production.ini | `disqus.name` | - |
| SENTRY_DSN | production.ini | `sentry.dsn` | - |
| SENTRY_ENV | production.ini | `sentry.environment` | - |

## Copying and License

This material is copyright (c) 2013-2021 Digital and Population Data Services Agency, Finland.

CKAN extensions are licensed under the GNU Affero General Public License (AGPL) v3.0
whose full text may be found at: http://www.fsf.org/licensing/licenses/agpl-3.0.html

All other content in this repository is licensed under MIT License unless otherwise specified.
