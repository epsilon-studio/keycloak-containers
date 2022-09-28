#/bin/zsh

VERSION=19.0.2 # set version here

mkdir -p /tmp/keycloak/v19.0.2
cd /tmp/keycloak/v19.0.2
git clone git@github.com:keycloak/keycloak-containers.git
cd keycloak-containers/server
git checkout $VERSION
docker build -t "quay.io/keycloak:${VERSION}" .
#docker build -t "quay.io/keycloak/keycloak:${VERSION}" .