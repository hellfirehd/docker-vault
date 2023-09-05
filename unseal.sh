#!/usr/bin/env sh

echo "Starting unsealer"
while true
do
    status=$(curl -s $URL/v1/sys/seal-status | jq '.sealed')
    if [ true = "$status" ]
    then
        echo "Unsealing"
        curl -s --request PUT --data "{\"key\": \"$KEY\"}" $URL/v1/sys/unseal
    fi
    sleep $INTERVAL
done
