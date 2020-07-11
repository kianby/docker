FROM python:3.7-alpine

RUN apk update && apk add bash && apk add git && rm -rf /var/cache/apk/* 

COPY docker-init.sh /usr/local/bin/
RUN chmod +x usr/local/bin/docker-init.sh

RUN cd / && git clone https://github.com/kianby/stacosys.git

WORKDIR /stacosys
 
RUN python3 -m pip install flask peewee pyrss2gen markdown flask-apscheduler profig requests

CMD ["docker-init.sh"]