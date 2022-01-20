#!/bin/bash
set -e

if [[ "${DEV_MODE}" == "true" ]]; then
  # init mounted filesystems
  echo "init_filesystems - DEV_MODE = 'true', initializing '${WWW_DIR}/resources' ..."
  sudo -E rsync -au --delete ${EXT_DIR}/opendata-assets/resources/ ${WWW_DIR}/resources
  sudo -E chown -R ckan:ckan ${WWW_DIR}/resources
else
  # init mounted filesystems if not done or version updated (ECS Fargate EFS limitation forces this approach)
  if [[ "$(cat ${DATA_DIR}/.fs-done)" != "$CKAN_IMAGE_TAG" ]]; then
    echo "init_filesystems - initializing '${DATA_DIR}' & '${WWW_DIR}/resources' ..."
    rsync -au ${BASE_DIR}/data/ ${DATA_DIR} &
    rsync -au --delete ${BASE_DIR}/resources/ ${WWW_DIR}/resources &
    wait
    # set init flag to done
    echo "$CKAN_IMAGE_TAG" > ${DATA_DIR}/.fs-done
  fi
fi
