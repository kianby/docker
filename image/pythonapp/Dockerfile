FROM python:3.7-alpine

ENV APP_NAME appname
ENV APP_PORT 80
ENV APP_CONFIG /app/config.json
ENV TZ Europe/Paris

RUN apk update && apk add bash && apk add git && rm -rf /var/cache/apk/* 

COPY docker-init.sh /usr/local/bin/
RUN chmod +x usr/local/bin/docker-init.sh

#EXPOSE ${APP_PORT}

WORKDIR /app
 
RUN python3 -m pip install flask peewee pyrss2gen markdown clize flask-apscheduler profig requests diaspy
COPY patch_diaspy/connection.py /usr/local/lib/python3.6/site-packages/diaspy/connection.py

CMD ["docker-init.sh"]