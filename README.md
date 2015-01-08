#Creating a cassandra docker image

Based on work of. The 2.1.1 version worked. The 2.0.10 version was not working.
Do i changed it a bit.
(https://github.com/tobert/cassandra-docker/tree/cassandra-2.0)


#Network interfaces

Creating for network interfaces on the local loopback.
I do not understand the bridges and network trafic from my own nic to the gateway and back.
So this is a simple setup for people that do need a local cluster and do not want to have a difficult network setup.

sudo ifconfig lo:1 127.0.0.5
sudo ifconfig lo:2 127.0.0.2
sudo ifconfig lo:3 127.0.0.3
sudo ifconfig lo:4 127.0.0.4

#Running the image

TODO : create a neat image tag

First create the following local folders
mkdir /data/cassandra/c1
mkdir /data/cassandra/c2
mkdir /data/cassandra/c3
mkdir /data/cassandra/c4

docker run -d -v /data/cassandra/c1:/data -p 127.0.0.1:9042:9042 fbcf2439f1e1
docker run -d -v /data/cassandra/c2:/data -p 127.0.0.2:9042:9042 fbcf2439f1e1
docker run -d -v /data/cassandra/c3:/data -p 127.0.0.3:9042:9042 fbcf2439f1e1
docker run -d -v /data/cassandra/c4:/data -p 127.0.0.4:9042:9042 fbcf2439f1e1

You should be able to connect now.

#Build

go build cassandra-docker.go (Creates a cassandra-docker exec)

docker build .


