FROM python:alpine3.7

ENV APP_NAME mail2run
ENV APP_CONFIG /app/config.json

RUN apk update && apk add bash && apk add git && rm -rf /var/cache/apk/* 

COPY docker-init.sh /usr/local/bin/
RUN chmod +x usr/local/bin/docker-init.sh

WORKDIR /app
RUN git clone https://github.com/kianby/${APP_NAME}.git
RUN python3 -m pip install -r /app/${APP_NAME}/requirements.txt

CMD ["docker-init.sh"]