FROM ubuntu:14.04

RUN apt-get update -y \
    && apt-get install -y \
        python-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip install elasticsearch-curator

CMD /usr/sbin/cron -f
