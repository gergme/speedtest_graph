## Docker-composed TIG Stack w/ speed-test

##### Description
This project tracks speedtest.net results via [speed-test](https://github.com/sindresorhus/speed-test) json, piped to telegraf and stored and influxdb which is then presented via grafana.

##### Requirements
* Docker w/ docker-compose installed
* The docker-compose.yml file defines a local repository, I recommend you run a local one with
  `docker run -d -p 5000:5000 --restart=always --name registry registry:2`
* Review the files (Would you really run things random strangers post online without doing this?)

##### Howto
```
git clone https://github.com/gergme/speedtest_graph
cd speedtest_graph
mkdir -p volumes/influxdb
docker-compose up -d --build
```
##### URLs
[InfluxDB Dashboard](http://influxdb:8083)
[Grafana Dashboard](http://grafana:3000)

##### Create InfluxDB database
From the InfluxDB dashboard you will need to create a database named 'internet'
```CREATE DATABASE internet``` 

##### Create Grafana Dashboard
From Grafana you will need to connect to your datasource (InfluxDB), you will be guided through setting up grafana after your first login, if you have trouble connecting to your datasource, try using `http://influxdb:8086` (or if you changed the containers name, `http://name:8086`) as your host.

##### Why?
Really just to have a reference to how often I get what I pay for with my ISP.
