#!/bin/bash
set -exu -o pipefail
docker build . -t us.gcr.io/bitdotioinc/pgpool:latest && docker push us.gcr.io/bitdotioinc/pgpool:latest

