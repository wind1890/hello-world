FROM mariadb:latest

RUN apt-get -y update && apt-get install nano vim curl -y

VOLUME [ "/maria_data", "/maria_log", "/maria_backup" ]
VOLUME ["/maria_data/data","/maria_data/temp"]
VOLUME ["/maria_log/error","/maria_log/general","/maria_log/bin","maria_log/slow","maria_log/relay"]

ADD my.cnf /etc/mysql/my.cnf

ENV MYSQL_ROOT_PASSWORD=1234 \
    MYSQL_DATABASE=myDB
