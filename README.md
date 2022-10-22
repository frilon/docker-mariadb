# Docker-MariaDB init multiple databases

Start a dockerized MariaDB via `docker compose`.

If you want to provoision more than one database and database user, copy or rename `.env-db-init-example` to `.env-db-init` and replace all values within the bash's array to fit your needs.

Then uncomment the amount of arrays you need and replace all values within the bash's array to fit your needs.

Afterwards, you can execute the shell script `prepare-init-scripts.sh`. This script will create the sql script per database array you have defined before.

Now, you can start the container.

You can connect into the MySQL either using a local `mysql` client via `mysql -uroot -preallySafePassword -h 127.0.0.1 -P3306`, or directly in the container via `docker exec -it mariadb mysql -uroot -preallySafePassword`. Or if you don't want to expose the port, you can create a temporary MySQL client within the same network as the MariaDB server container:
```sh
docker run --rm -it \
  --name mariadb_client \
  --network traefik_ext \
  mariadb:$(awk -F: '/image: / {print $NF}' docker-compose.yml) mysql -h mariadb -u root -p$(awk -F= '/MARIADB_ROOT_PASSWORD/ {print $NF}' .env)
```

You can test the connection to an initialized database this way:
```sh
source .env-db-init
docker run --rm -it \
  --name mariadb_client \
  --network traefik_ext \
  mariadb:$(awk -F: '/image: / {print $NF}' docker-compose.yml) mysql -h mariadb -u${db1[2]} -p${db1[4]} ${db1[0]}
```
