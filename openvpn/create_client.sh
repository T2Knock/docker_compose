#!/bin/bash -ex

docker compose run --rm ovpn easyrsa build-client-full "$1" nopass
docker compose run --rm ovpn ovpn_getclient "$1" > "$1".ovpn
