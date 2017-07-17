#!/bin/bash

# Get the IP docker gave us, trimming whitespace
IP=`hostname -I | xargs`

# Build the server properties file from the template
sed 's/KAFKA_IP/'"${IP}"'/' </opt/kafka/config/server.properties.template >/opt/kafka/config/server.properties

/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties
