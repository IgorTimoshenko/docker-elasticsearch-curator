#!/bin/bash

if [ -n "$CRON_JOB" ]; then
    echo "$CRON_JOB" > ~/crontab
    echo "" >> ~/crontab
    crontab ~/crontab
    rm -f ~/crontab
fi

echo "#!/bin/bash" > ~/export-env-vars.sh
/usr/bin/env | grep -E '^[0-9A-Z_]{1,}=' | sed -r 's/=(.*)$/="\1"/' > ~/export-env-vars.sh
chmod +x ~/export-env-vars.sh

/usr/sbin/rsyslogd

/usr/sbin/cron -f
