#!/bin/bash
# Author Patrick van Amstel
# Date 2015 01 25


NAME=CASSANDRA
NODE1=c1
NODE2=c2
NODE3=c3
NODE4=c4

docker kill ${NAME}_${NODE1}
docker kill ${NAME}_${NODE2}
docker kill ${NAME}_${NODE3}
docker kill ${NAME}_${NODE4}

docker rm ${NAME}_${NODE1}
docker rm ${NAME}_${NODE2}
docker rm ${NAME}_${NODE3}
docker rm ${NAME}_${NODE4}



