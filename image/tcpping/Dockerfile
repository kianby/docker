FROM debian

RUN apt-get update && apt-get -y install curl bc tcptraceroute netcat

COPY docker-init.sh /usr/local/bin/
COPY tcpping /usr/local/bin/
RUN chmod +x usr/local/bin/docker-init.sh
RUN chmod +x usr/local/bin/tcpping

CMD ["docker-init.sh"]