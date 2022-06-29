#! /usr/bin/env bash

# shellcheck source=.env-db-init
source .env-db-init

mkdir -p ./mariadb/init

if [ ${#db1[@]} -ge 5 ]; then
    while read -r db_name db_tables db_username db_host db_password db_privileges; do
        sed s/REPLACE_DATABASE_NAME/"${db_name}"/g ./mariadb/template.sql >./mariadb/init/1.sql
        sed -i s/REPLACE_DATABASE_TABLES/"${db_tables}"/g ./mariadb/init/1.sql
        sed -i s/REPLACE_USERNAME/"${db_username}"/g ./mariadb/init/1.sql
        sed -i s/REPLACE_HOSTNAME/"${db_host}"/g ./mariadb/init/1.sql
        sed -i s/REPLACE_PASSWORD/"${db_password}"/g ./mariadb/init/1.sql
        sed -i s/REPLACE_PRIVILEGES/"${db_privileges}"/g ./mariadb/init/1.sql
    done <<<"${db1[@]}"
fi

# if [ ${#db2[@]} -ge 5 ]; then
#     while read -r db_name db_tables db_username db_host db_password db_privileges; do
#         sed s/REPLACE_DATABASE_NAME/"${db_name}"/g ./mariadb/template.sql >./mariadb/init/2.sql
#         sed -i s/REPLACE_DATABASE_TABLES/"${db_tables}"/g ./mariadb/init/2.sql
#         sed -i s/REPLACE_USERNAME/"${db_username}"/g ./mariadb/init/2.sql
#         sed -i s/REPLACE_HOSTNAME/"${db_host}"/g ./mariadb/init/2.sql
#         sed -i s/REPLACE_PASSWORD/"${db_password}"/g ./mariadb/init/2.sql
#         sed -i s/REPLACE_PRIVILEGES/"${db_privileges}"/g ./mariadb/init/2.sql
#     done <<<"${db2[@]}"
# fi

# if [ ${#db3[@]} -ge 5 ]; then
#     while read -r db_name db_tables db_username db_host db_password db_privileges; do
#         sed s/REPLACE_DATABASE_NAME/"${db_name}"/g ./mariadb/template.sql >./mariadb/init/3.sql
#         sed -i s/REPLACE_DATABASE_TABLES/"${db_tables}"/g ./mariadb/init/3.sql
#         sed -i s/REPLACE_USERNAME/"${db_username}"/g ./mariadb/init/3.sql
#         sed -i s/REPLACE_HOSTNAME/"${db_host}"/g ./mariadb/init/3.sql
#         sed -i s/REPLACE_PASSWORD/"${db_password}"/g ./mariadb/init/3.sql
#         sed -i s/REPLACE_PRIVILEGES/"${db_privileges}"/g ./mariadb/init/3.sql
#     done <<<"${db3[@]}"
# fi

# if [ ${#db4[@]} -ge 5 ]; then
#     while read -r db_name db_tables db_username db_host db_password db_privileges; do
#         sed s/REPLACE_DATABASE_NAME/"${db_name}"/g ./mariadb/template.sql >./mariadb/init/4.sql
#         sed -i s/REPLACE_DATABASE_TABLES/"${db_tables}"/g ./mariadb/init/4.sql
#         sed -i s/REPLACE_USERNAME/"${db_username}"/g ./mariadb/init/4.sql
#         sed -i s/REPLACE_HOSTNAME/"${db_host}"/g ./mariadb/init/4.sql
#         sed -i s/REPLACE_PASSWORD/"${db_password}"/g ./mariadb/init/4.sql
#         sed -i s/REPLACE_PRIVILEGES/"${db_privileges}"/g ./mariadb/init/4.sql
#     done <<<"${db4[@]}"
# fi

# if [ ${#db5[@]} -ge 5 ]; then
#     while read -r db_name db_tables db_username db_host db_password db_privileges; do
#         sed s/REPLACE_DATABASE_NAME/"${db_name}"/g ./mariadb/template.sql >./mariadb/init/5.sql
#         sed -i s/REPLACE_DATABASE_TABLES/"${db_tables}"/g ./mariadb/init/5.sql
#         sed -i s/REPLACE_USERNAME/"${db_username}"/g ./mariadb/init/5.sql
#         sed -i s/REPLACE_HOSTNAME/"${db_host}"/g ./mariadb/init/5.sql
#         sed -i s/REPLACE_PASSWORD/"${db_password}"/g ./mariadb/init/5.sql
#         sed -i s/REPLACE_PRIVILEGES/"${db_privileges}"/g ./mariadb/init/5.sql
#     done <<<"${db5[@]}"
# fi
