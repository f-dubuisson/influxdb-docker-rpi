FROM resin/rpi-raspbian:jessie

ENV INFLUXDB_VERSION 1.2.2
RUN  apt-get update \
  && apt-get install -y wget
RUN wget https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}_linux_armhf.tar.gz && \
    tar xvfz influxdb-${INFLUXDB_VERSION}_linux_armhf.tar.gz && \
    rm influxdb-${INFLUXDB_VERSION}_linux_armhf.tar.gz && \
    cp -r influxdb-${INFLUXDB_VERSION}*/* / && \
    rm -rf influxdb-${INFLUXDB_VERSION}*

COPY influxdb.conf /etc/influxdb/influxdb.conf

EXPOSE 8086 8083

VOLUME /var/lib/influxdb

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["influxd"]
