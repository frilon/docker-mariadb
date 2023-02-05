#! /usr/bin/env bash

docker exec -it mariadb mysql -uroot -p$(docker exec mariadb printenv MARIADB_ROOT_PASSWORD)
