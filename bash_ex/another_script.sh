#!/bin/bash

users=$(cat users.txt)
for user in $users
do
	if [[ $user == *"admin" ]]
	then
		user=$(echo $user | cut -d ':' -f 1)
		useradd $user
		usermod $user -G sudo
	else
		useradd $user
	fi
done
