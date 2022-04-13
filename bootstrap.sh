#!/usr/bin/env bash

export HOSTNAME=$(hostname)
export DRONE_VERSION=1.10.1
export DRONE_RUNNER_VERSION=1.6.3
export GITEA_VERSION=1.13
export IP_ADDRESS=192.168.56.100
export MINIO_ACCESS_KEY="EXAMPLEKEY"
export MINIO_SECRET_KEY="EXAMPLESECRET"
export GITEA_ADMIN_USER="vinaymakam"
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${GITEA_ADMIN_USER},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
export DRONE_GITEA_CLIENT_ID="5e491cdc-9d1c-42bb-9be6-eb402a4fba4f"
export DRONE_GITEA_CLIENT_SECRET="rapcQ8V_FN_FbyuDcoOUUElwS7rDmJ7UksyDqOUFK9Q="
docker-compose up -d

echo ""
echo "Gitea: http://${IP_ADDRESS}:3000/"
echo "Drone: http://${IP_ADDRESS}:3001/"