#!/bin/bash
inc=0
while true
do
	echo $inc
    inc=$((inc+1))
	
    echo -e "import redis\nr = redis.StrictRedis(host=\"$REDIS_HOST\", port=$REDIS_PORT, db=0)\nr.rpush(\"rng::list\", $inc)" | python3
	sleep 1
done