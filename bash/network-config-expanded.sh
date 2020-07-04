#!/bin/bash

#hostname command is used for finding the hostname and it is assigned to the variable
hostName=$(hostname)

#obtaining the router name
defaultRouterAddress=$(ip r s default| cut -d ' ' -f -3)
defaultRouterName=$(getent hosts $defaultRouterAddress | awk '{print $2}')

#finding the external information using the curl command
externalAddress=$(curl -s icanhazip.com)
externalName=$(getent hosts $externalAddress | awk '{print $3}')

#printing the values
cat <<EOF
Hostname : $hostName
Default Router : $defaultRouterAddress
RouterName : $defaultRouterName
External IP : $externalAddress
External Name : $externalName
EOF

#defining the interfaces
interfaces=$(ifconfig | grep -w -o '^[^][^]*:' | tr -d :)
for interface in $interfaces; do
  if [ $interface == "lo" ]
  then
    continue
  fi



#finding the IPv4 address for the interfaces
ipv4Address=$(ip a s $interface|awk -F '[/ ]+' '/inet /{print $}')
ipv4Hostname=$(getent hosts $ipv4Address | awk '{print $2}')

#identification of networkName networkAddress and networkNumber
networkAddress=$(ip route list dev $interface scope link|cut -d ' ' -f 1 |grep -v '^169')
networkNumber=$(cut -d / -f 1 <<<"$networkAddress")
networkName=$(getent networks $networkNumber|awk '{print $1}')


cat <<EOF
Interface $interface
Address : $ipv4Address
Name : $ipv4Hostname
Network Address : $networkAddress
Network Number : $networkNumber
Network Name : $networkName
EOF
done
