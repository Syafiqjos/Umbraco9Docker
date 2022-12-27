FROM mcr.microsoft.com/mssql/server:2022-latest

WORKDIR /usr/src/startup
COPY startup/ .

ENV ACCEPT_EULA Y
ENV UMBRACO_DB_NAME umbraco_cms
ENV MSSQL_SA_PASSWORD secretPassword123

EXPOSE 1433
EXPOSE 1434

CMD /bin/bash /usr/src/startup/entrypoint.sh