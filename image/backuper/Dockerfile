FROM debian

RUN apt-get update && apt-get -y install heirloom-mailx cron

COPY docker-init.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-init.sh

COPY backup.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/backup.sh

COPY backup-cron /etc/cron.d/backup-cron
RUN crontab /etc/cron.d/backup-cron

CMD ["docker-init.sh"]