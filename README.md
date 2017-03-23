# influxdb-docker-rpi [![Build Status](https://travis-ci.org/f-dubuisson/influxdb-docker-rpi.png)](https://travis-ci.org/f-dubuisson/influxdb-docker-rpi)
Docker images for InfluxDB on Raspberry Pi. Tested on a raspi3/Jessie.

Usage:
```
sudo docker run -p 8086:8086 -p 8083:8083 -d --name influxdb influxdb
```
