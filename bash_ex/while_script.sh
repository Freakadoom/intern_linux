#!/bin/bash

index=1

while [[ $index < 5 ]]
do
	echo $index
	let "index=index+1"
done
