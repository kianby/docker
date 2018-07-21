FROM python:3.6-alpine

ENV APP_NAME appname
ENV APP_PORT 80
ENV APP_CONFIG /app/config.json

RUN apk update && apk add bash && apk add git && rm -rf /var/cache/apk/* 

COPY docker-init.sh /usr/local/bin/
RUN chmod +x usr/local/bin/docker-init.sh

EXPOSE ${APP_PORT}

WORKDIR /app

COPY requirements.txt . 
RUN python3 -m pip install -r requirements.txt

CMD ["docker-init.sh"]