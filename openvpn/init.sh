#!/bin/bash -x

docker compose run --rm ovpn ovpn_genconfig -u udp://YOURIP
docker compose run --rm ovpn ovpn_initpki
