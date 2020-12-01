#!/bin/bash

time=$(echo "*/2 * * * * /home/pavel/crontab_test.sh")
cron=$(cat /var/spool/cron/crontabs/pavel)


if [[ -e tmp ]]
then
        if [[ -e tmp/cron_test.txt ]]
        then
                date > ./tmp/cron_test.txt
        else
                touch tmp/cron_test.txt
                date > ./tmp/cron_test.txt
        fi
else
        mkdir tmp
        touch tmp/cron_test.txt
        date > ./tmp/cron_test.txt
fi


if [[ $cron ==  *$time ]]
then
        cd ./
else
       echo "$time" >> /var/spool/cron/crontabs/pavel
fi

