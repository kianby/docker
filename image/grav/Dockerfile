FROM nginx:1.15.9

# Desired version of grav
ARG GRAV_VERSION=1.5.10

# Install dependencies
RUN apt-get update && \
    apt-get install -y sudo git wget vim unzip php7.0 php7.0-curl php7.0-gd php-pclzip php7.0-fpm php7.0-mbstring php-zip php-xml 
ADD https://github.com/krallin/tini/releases/download/v0.13.2/tini /usr/local/bin/tini
RUN chmod +x /usr/local/bin/tini

# Set user to www-data
RUN mkdir /var/run/php && chown www-data:www-data /var/run/php
RUN mkdir -p /var/www && chown www-data:www-data /var/www
USER www-data

# Install grav
WORKDIR /var/www
RUN wget https://github.com/getgrav/grav/releases/download/$GRAV_VERSION/grav-admin-v$GRAV_VERSION.zip && \
    unzip grav-admin-v$GRAV_VERSION.zip && \
    rm grav-admin-v$GRAV_VERSION.zip && \
    cd grav-admin && \
    bin/gpm install -f -y admin

# Configure PHP
COPY php7-fpm-pool.conf /etc/php/7.0/fpm/pool.d/www.conf
COPY nginx-default.conf /etc/nginx/conf.d/default.conf

# Return to root user
USER root

# Configure nginx with grav
WORKDIR /var/www/grav-admin

# Set the file permissions
RUN usermod -aG www-data nginx
 
# Run startup script
COPY startup.sh /usr/local/bin/startup.sh
RUN chmod +x /usr/local/bin/startup.sh
ENTRYPOINT [ "/usr/local/bin/tini", "--", "/usr/local/bin/startup.sh" ]