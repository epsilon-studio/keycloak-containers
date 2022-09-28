#/bin/zsh

VERSION=18.0.2 # set version here

cd /tmp/keycloak/v18.0.2
git clone git@github.com:keycloak/keycloak-containers.git
cd keycloak-containers/server
git checkout $VERSION
docker build -t "quay.io/keycloak:${VERSION}" .
#docker build -t "quay.io/keycloak/keycloak:${VERSION}" .