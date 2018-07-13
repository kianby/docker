FROM python:alpine3.7

ENV APP_NAME appname
ENV APP_PORT 80
ENV APP_CONFIG /app/config.json
ENV APP_GITROOT https://github.com/coder

RUN apk update && apk add bash && apk add git && rm -rf /var/cache/apk/* 

COPY docker-init.sh /usr/local/bin/
RUN chmod +x usr/local/bin/docker-init.sh

EXPOSE ${APP_PORT}

WORKDIR /app

COPY requirements.txt . 
RUN python3 -m pip install -r requirements.txt

CMD ["docker-init.sh"]