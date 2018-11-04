#!/bin/bash

echo "user $MAILX_SMTP_USER host $MAILX_SMTP_HOST admin $MAILX_SMTP_TOADMIN"
# build backup
[ ! -d /target ] && mkdir -p /target
[ -f /target/backup.tar.gz ] && rm -f /target/backup.tar.gz
tar cvpzf /target/backup.tar.gz $BACKUP_OPTIONS /source

# mail backup
cd /target
heirloom-mailx -v -r $MAILX_SMTP_USER \
-s "Backup" \
-a backup.tar.gz \
-S smtp=$MAILX_SMTP_HOST \
-S smtp-use-starttls \
-S smtp-auth=login \
-S smtp-auth-user=$MAILX_SMTP_USER \
-S smtp-auth-password=$MAILX_SMTP_PASSWORD \
-S ssl-verify=ignore \
$MAILX_SMTP_TOADMIN
