#!//bin/bash
#adding the value of host to a variable
hostName=$(hostname)
#getting the ip address of the interface
interfaceName=$(ip a |awk '/: e/{gsub(/:/,"");print $2}')
#getting the ip address for the interface
ipAddress=$(ip a s $interfaceName|awk '/inet /{gsub (/\/.*/,"");print $2}')
#getting the lan host name
lanHostname=$(getent hosts $ipAddress | awk '{print $2}')
#getting the external IP
externalIP=$(curl -s icanhazip.com)
#getting the external name
externalName=$(getent hosts $externalIP | awk '{print $2}')
#getting the router address
routerAddress=$(ip r | awk '/via /{gsub(/\/.*/,"");print $3}')
#getting the router name
routerName=$(getent hosts $routerAddress | awk 'print $2')

#pritning the values
cat <<EOF
Hostname : $hostName
Lan Address : $ipAddress
Lan Hostname : $lanHostname
External IP : $externalIP
External Name : $externalName
Router Address : $routerAddress
Router Hostname : $routerName
EOF
