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
 
RUN python3 -m pip install flask peewee pyrss2gen markdown clize flask-apscheduler profig requests

# dirty diaspy installation ;-)
RUN git clone https://github.com/kianby/diaspy.git /tmp
RUN mv /tmp/diaspy /usr/local/lib/python3.7/site-packages/.


CMD ["docker-init.sh"]