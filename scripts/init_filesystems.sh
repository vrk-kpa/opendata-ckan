#!/bin/bash
set -e

echo "init_filesystems() ..."

# check if migration fs is mounted, migrate data if it is
if [[ -d "/mnt/ytp_files/ckan" ]]; then
  echo "migrating data from /mnt/ytp_files/ckan to ${DATA_DIR} ..."
  rsync -au --chown=ckan:ckan /mnt/ytp_files/ckan/ ${DATA_DIR}
  echo "printing migration source contents ..."
  ls -lah /mnt/ytp_files/ckan
  echo "printing migration destination contents ..."
  ls -lah ${DATA_DIR}
fi

# init mounted filesystems (ECS Fargate EFS limitation forces this approach)
echo "initializing ${DATA_DIR} & ${WWW_DIR}/resources ..."
rsync -au ${BASE_DIR}/data/ ${DATA_DIR} &
rsync -au --delete ${BASE_DIR}/resources/ ${WWW_DIR}/resources &
wait
