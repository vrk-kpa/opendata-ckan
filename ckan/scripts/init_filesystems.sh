#!/bin/bash
set -e

if [[ "${DEV_MODE}" == "true" ]]; then
  # init mounted filesystems
  echo "init_filesystems - DEV_MODE = 'true', initializing '${WWW_DIR}/resources' ..."
  sudo -E rsync -au --delete ${EXT_DIR}/ytp-assets-common/resources/ ${WWW_DIR}/resources
  sudo -E chown -R ckan:ckan ${WWW_DIR}/resources
else
  # migrate data if migration fs is mounted to known path
  # NOTE: this is a bad idea, because EFS->EFS rsync perf is so bad!
  #       it's left here as an example, can be deleted later...
  if [[ -d "/mnt/ytp_files/ckan" ]]; then
    echo "init_filesystems - migrating data from '/mnt/ytp_files/ckan' to '${DATA_DIR}' ..."
    rsync -au --chown=ckan:ckan /mnt/ytp_files/ckan/ ${DATA_DIR}
    echo "printing migration source contents:"
    ls -lah /mnt/ytp_files/ckan
    echo "printing migration destination contents:"
    ls -lah ${DATA_DIR}
  fi

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
