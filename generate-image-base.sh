#/bin/zsh

VERSION=17.0.1 # set version here

cd /tmp/keycloak/v17.0.1
git clone git@github.com:keycloak/keycloak-containers.git
cd keycloak-containers/server
git checkout $VERSION
docker build -t "quay.io/keycloak:${VERSION}" .
#docker build -t "quay.io/keycloak/keycloak:${VERSION}" .