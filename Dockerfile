FROM bitnami/minideb:stretch
LABEL Author="Jino pl"

RUN install_packages apache2 mysql-server curl ca-certificates php php-mysql
RUN a2enmod rewrite
EXPOSE 80
COPY scripts/init.sh /init.sh
RUN chmod u+x /init.sh
ENTRYPOINT ["/init.sh"]