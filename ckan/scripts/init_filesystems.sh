#!/bin/bash
set -e

if [[ "${DEV_MODE}" == "true" ]]; then
    # don't do anything because folders are mounted from host
    echo "init_filesystems - skipping because DEV_MODE = 'true' ..."
else
  # migrate data if migration fs is mounted to known path
  if [[ -d "/mnt/ytp_files/ckan" ]]; then
    echo "init_filesystems - migrating data from '/mnt/ytp_files/ckan' to '${DATA_DIR}' ..."
    rsync -au --chown=ckan:ckan /mnt/ytp_files/ckan/ ${DATA_DIR}
    echo "printing migration source contents:"
    ls -lah /mnt/ytp_files/ckan
    echo "printing migration destination contents:"
    ls -lah ${DATA_DIR}
  fi

  # init mounted filesystems (ECS Fargate EFS limitation forces this approach)
  echo "init_filesystems - initializing '${DATA_DIR}' & '${WWW_DIR}/resources' ..."
  rsync -au ${BASE_DIR}/data/ ${DATA_DIR} &
  rsync -au --delete ${BASE_DIR}/resources/ ${WWW_DIR}/resources &
  wait
fi
