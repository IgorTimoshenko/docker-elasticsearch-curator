FROM igortimoshenko/docker-cron-job

RUN apt-get update -y \
    && apt-get install -y \
        python-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip install elasticsearch-curator
