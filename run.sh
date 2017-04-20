#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker rm bind9
docker build --no-cache --tag=adelantos/bind9 .
docker run -it -p 55:53 --name=bind9 adelantos/bind9