#Creating a cassandra docker image

Based on work of. The 2.1.1 version worked. The 2.0.10 version was not working.

I did some work on the image
(https://github.com/tobert/cassandra-docker/tree/cassandra-2.0)

#Network interfaces
Are all located on the docker0 bridge

#Image in docker repo
TODO

#Running the image

./start-cluster.sh
./stop-cluster.sh


#Build

go build cassandra-docker.go (Creates a cassandra-docker exec)

docker build .


