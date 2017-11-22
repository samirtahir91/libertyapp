#!/bin/bash

runSeed() {
curl -X POST http://admin:admin@192.168.99.100:8080/job/seedjob/build 2>jenkinsStatus
}

runSeed

while [[ $(cat jenkinsStatus) != "" ]]
do
	echo "running seed again, jenkins did not respond yet"
	runSeed
done
echo
echo "Jenkins seed job executed"
