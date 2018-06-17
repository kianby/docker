FROM python:alpine3.7

ENV STACOSYS_PORT 8100
ENV STACOSYS_CONFIG /app/stacosys/config.json

RUN apk update && apk add bash && apk add git && rm -rf /var/cache/apk/* 

COPY docker-init.sh /usr/local/bin/
RUN chmod +x usr/local/bin/docker-init.sh

WORKDIR /app
RUN git clone https://github.com/kianby/stacosys.git
RUN python3 -m pip install -r /app/stacosys/requirements.txt

EXPOSE ${STACOSYS_PORT}

CMD ["docker-init.sh"]