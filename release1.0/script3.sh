#!/bin/bash
services="sshd ssh jenkis docker"
for i in $services
do
        ps -C $i
        if [ $? -ne 0 ]
        then
                echo "send an email"
fi
done
