## elasticsearch-curator-cron Dockerfile


This repository contains **Dockerfile** of [elasticsearch-curator](https://www.elastic.co/guide/en/elasticsearch/client/curator/current/index.html)-cron for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/igortimoshenko/docker-elasticsearch-curator-cron/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [igortimoshenko/docker-cron-job](https://hub.docker.com/igortimoshenko/docker-cron-job/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/igortimoshenko/docker-elasticsearch-curator-cron/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull igortimoshenko/docker-elasticsearch-curator-cron`

   (alternatively, you can build an image from Dockerfile: `docker build -t="igortimoshenko/docker-elasticsearch-curator-cron" github.com/igortimoshenko/docker-elasticsearch-curator-cron`)


### Usage

Start container specifying the executable script for cron:

    docker run -d \
    -v `<script-dir>`/cron.sh:/root/cron.sh \
    -e CRON_JOB='* * * * * ~/cron.sh' \
    igortimoshenko/docker-elasticsearch-curator-cron

> Note that if you need environment variables within your cron script then add
> the following line `source /root/.env-vars` to your script
