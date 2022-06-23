#!/bin/bash -e

cd nifi/secrets
rm -rf truststore.jks keystore.jks
cd ../..
./setup.sh
docker-compose -p example_project build --no-cache --force-rm
docker-compose -p example_project up -d --force-recreate
#docker exec -u root -i -t example_project_nifi_1 /bin/bash

