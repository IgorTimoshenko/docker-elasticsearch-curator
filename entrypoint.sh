#!/bin/bash

if [ -n "$CRON_JOB" ]; then
    echo "$CRON_JOB" > ~/crontab
    echo "" >> ~/crontab
    crontab ~/crontab
    rm -f ~/crontab
fi

/usr/bin/env > ~/env.sh

/usr/sbin/rsyslogd

/usr/sbin/cron -f
