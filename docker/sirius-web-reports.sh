#! /bin/bash -e

set -x

# create environment configuration file
tpage --envvars deployment.tt > environments/production.yml

plackup -E production bin/app.psgi
