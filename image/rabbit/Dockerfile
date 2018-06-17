FROM rabbitmq:latest

ENV RABBITMQ_APP_USER user
ENV RABBITMQ_APP_PASSWORD user
ENV RABBITMQ_APP_VHOST app

COPY docker-init.sh /usr/local/bin/
RUN chmod +x usr/local/bin/docker-init.sh

CMD ["docker-init.sh"]