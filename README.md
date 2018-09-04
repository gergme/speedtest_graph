## Docker-composed TIG Stack w/ speed-test

This is a fork of [mlabouardy/telegraf-influxdb-grafana](https://github.com/mlabouardy/telegraf-influxdb-grafana)

##### Screenshot
#![screenshot](http://bsd.gerg.me/speedtest_graph.png "Two example graphs you can make")

##### Description
This project tracks speedtest.net results via [speed-test](https://github.com/sindresorhus/speed-test) json output, piped to telegraf and stored in influxdb which is then presented via grafana.

##### Requirements
* Docker w/ docker-compose installed
* Review the files and modify as you see fit (Would you really run things random strangers post online without doing this?)

##### Howto
```
git clone https://github.com/gergme/speedtest_graph
cd speedtest_graph
mkdir -p volumes/influxdb
docker-compose up -d --build
```
##### Dashboard Ports

* InfluxDB Dashboard - TCP/8083
* Grafana Dashboard - TCP/3000

##### Create InfluxDB database
From the InfluxDB dashboard you will need to create a database named 'internet'
```CREATE DATABASE internet``` 

##### Create InfluxDB Retention Policy
It's recommended that you setup a Retention Policy on your 'internet' database to keep it's size in check.  Do this sooner rather than later, as creating a retention policy may erase existing data.
`CREATE RETENTION POLICY "default" ON "internet" DURATION 120d REPLICATION 1 DEFAULT`


##### Create Grafana Dashboard
From Grafana you will need to connect to your datasource (InfluxDB), you will be guided through setting up grafana after your first login, if you have trouble connecting to your datasource, try using `http://influxdb:8086` (or if you changed the containers name, `http://name:8086`) as your host.

##### Why?
Really just to have a reference to how often I get what I pay for with my ISP.
