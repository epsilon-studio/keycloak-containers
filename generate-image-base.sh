#/bin/zsh

VERSION=16.1.1 # set version here

mkdir -p /tmp/keycloak/v16.1.1
cd /tmp/keycloak/v16.1.1
git clone git@github.com:keycloak/keycloak-containers.git
cd keycloak-containers/server
git checkout $VERSION
docker build -t "quay.io/keycloak:${VERSION}" .
#docker build -t "quay.io/keycloak/keycloak:${VERSION}" .