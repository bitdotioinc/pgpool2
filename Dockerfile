FROM us.gcr.io/bitdotioinc/bitnami/minideb:buster

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y install gcc libpq-dev make && \
        rm -rf /var/lib/apt/lists/*


RUN mkdir -p /src/
WORKDIR /src/
COPY . .

RUN ./configure && make && make install
