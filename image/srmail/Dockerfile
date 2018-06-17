FROM python:alpine3.7

ENV SRMAIL_CONFIG /app/config.json

RUN apk update && apk add bash && apk add git && rm -rf /var/cache/apk/* 

COPY docker-init.sh /usr/local/bin/
RUN chmod +x usr/local/bin/docker-init.sh

WORKDIR /app
RUN git clone https://github.com/kianby/srmail.git
RUN python3 -m pip install -r /app/srmail/requirements.txt

CMD ["docker-init.sh"]