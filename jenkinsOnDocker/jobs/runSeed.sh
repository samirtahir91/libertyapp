#!/bin/bash

jenkins="down"

while [[ ${jenkins} == "down" ]]
do
	 if [[ $(curl -X POST http://admin:admin@192.168.99.100:8080/job/seedjob/build) == "" ]]
		then
			echo "Seed job executed"
			jenkins="up"
	 fi
done
