CREATE DATABASE REPLACE_DATABASE_NAME;
CREATE USER 'REPLACE_USERNAME'@'REPLACE_HOSTNAME' IDENTIFIED BY 'REPLACE_PASSWORD';
GRANT REPLACE_PRIVILEGES ON REPLACE_DATABASE_NAME.REPLACE_DATABASE_TABLE TO 'REPLACE_USERNAME'@'REPLACE_HOSTNAME';
