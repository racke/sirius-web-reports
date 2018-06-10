#! /bin/bash -e

CONTAINER_ID=$(docker ps -q --filter='name=^/sirius-web-reports$')

if [ -n "$CONTAINER_ID" ]; then
    docker stop $CONTAINER_ID
    docker rm $CONTAINER_ID
fi

# Run script
docker run --name sirius-web-reports --env-file sirius-web-reports.env -d --network=host -it sirius-web-reports:latest $@
