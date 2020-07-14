FROM mariadb:latest

# ENV MYSQL_USER=$MYSQL_USER
# ENV MYSQL_PASSWORD=$MYSQL_PASSWORD
# ENV MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD

ADD ./start.sh .
ADD ./docker-entrypoint.sh .
RUN chmod +x start.sh
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT ["./start.sh"]
