#!/bin/bash
# Author Patrick van Amstel
# Date 2015 01 25
# Simple strait forward script for starting 1 cassandra seeding the rest

# Base folder for cluster

BASE_FOLDER=/data/cassandra/
CLUSTER_NAME=cassandra-development
NAME=CASSANDRA
NODE1=c1
NODE2=c2
NODE3=c3
NODE4=c4

CID=$(docker run -d --name ${NAME}_${NODE1} -v /data/cassandra/$NODE1:/data patrickvanamstel/cassandra:latest cassandra)
IP=`docker inspect --format '{{ .NetworkSettings.IPAddress }}' ${CID}`
echo "Started seed node(1) at $IP with name ${NAME}_${NODE1}"

CID=$(docker run -d --name ${NAME}_${NODE2} -v /data/cassandra/$NODE2:/data patrickvanamstel/cassandra:latest cassandra -seeds $IP)
IP=`docker inspect --format '{{ .NetworkSettings.IPAddress }}' ${CID}`
echo "Started node(2) at $IP with name ${NAME}_${NODE2}"


CID=$(docker run -d --name ${NAME}_${NODE3} -v /data/cassandra/$NODE3:/data patrickvanamstel/cassandra:latest cassandra -seeds $IP)
IP=`docker inspect --format '{{ .NetworkSettings.IPAddress }}' ${CID}`
echo "Started node(3) at $IP with name ${NAME}_${NODE3}"

CID=$(docker run -d --name ${NAME}_${NODE4} -v /data/cassandra/$NODE4:/data patrickvanamstel/cassandra:latest cassandra -seeds $IP)
IP=`docker inspect --format '{{ .NetworkSettings.IPAddress }}' ${CID}`
echo "Started node(4) at $IP with name ${NAME}_${NODE4}"


