#!/bin/bash

echo " hellp world"
continername=$(docker ps --format ' {{.ID}}' -l)
ip=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $continername)
hostname="Website"
echo $ip    $hostname >> "/etc/hosts"

