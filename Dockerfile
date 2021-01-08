FROM us.gcr.io/bitdotioinc/bitnami/minideb:buster

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y install libssl-dev gcc libpq-dev make && \
        rm -rf /var/lib/apt/lists/*


RUN mkdir -p /src/
WORKDIR /src/
COPY . .

RUN ./configure --with-openssl && make && make install

RUN mkdir -p /var/run/pgpool

CMD ["pgpool", "-n", "-d"]
