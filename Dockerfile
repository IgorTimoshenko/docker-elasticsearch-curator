FROM ubuntu:14.04

RUN apt-get update -y \
    && apt-get install -y \
        python-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip install elasticsearch-curator

COPY entrypoint.sh /
RUN chmod 0755 /entrypoint.sh

CMD /entrypoint.sh
