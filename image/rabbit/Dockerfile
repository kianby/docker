FROM rabbitmq:alpine

ENV RABBITMQ_APP_USER user
ENV RABBITMQ_APP_PASSWORD user
ENV RABBITMQ_APP_VHOST app

RUN apk update && apk add bash && rm -rf /var/cache/apk/* 

COPY docker-init.sh /usr/local/bin/
RUN chmod +x usr/local/bin/docker-init.sh

CMD ["docker-init.sh"]