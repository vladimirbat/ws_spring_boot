FROM mysql:5.7
ENV MYSQL_ROOT_PASSWORD="adminadmin"
ENV MYSQL_DATABASE="datos"
COPY datos.sql /tmp/datos.sql
COPY importar.sh /docker-entrypoint-initdb.d/importar.sh







