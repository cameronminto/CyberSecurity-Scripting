#!/bin/bash



ip=$(./IpInfo.sh | sed -n '/IP Address/p')
echo -e $ip
