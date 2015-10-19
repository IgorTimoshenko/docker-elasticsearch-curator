FROM elasticsearch

RUN apt-get update -y \
    && apt-get install -y \
        cron \
        python-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip install elasticsearch-curator

RUN /usr/sbin/cron
