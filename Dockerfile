FROM google/cloud-sdk:alpine
MAINTAINER Getulio Miranda "getulio.miranda2@gmail.com"

RUN gcloud components update beta

EXPOSE 8086

ENTRYPOINT gcloud beta emulators bigtable start --host-port=0.0.0.0:8086 --quiet
