echo Waiting process of creating database..
sleep 20 #
echo Add new database: ${UMBRACO_DB_NAME}
echo /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "${MSSQL_SA_PASSWORD}" -Q "CREATE DATABASE ${UMBRACO_DB_NAME}"
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "${MSSQL_SA_PASSWORD}" -Q "CREATE DATABASE ${UMBRACO_DB_NAME}"
echo Database added
echo Go to http://localhost:8809/umbraco to continue
echo "Server: <db_container_ipaddress>,1433"
echo "DB Container Ip Address: docker network ls && docker inspect <umbra_default_id>"
echo Database name: ${UMBRACO_DB_NAME}
echo Login: SA
echo Password: ${MSSQL_SA_PASSWORD}