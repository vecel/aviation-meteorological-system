#!/bin/bash

set -e
ID=""

if [ $1 = "namenode" ]; then
    echo "Configuring node as a NameNode"
    hdfs namenode &
    ID=$!
elif [ $1 = "datanode" ]; then
    echo "Configuring node as a DataNode"
    hdfs datanode
    exit 0
else
    echo "Provide node role: 'namenode' or 'datanode'"
    exit 1
fi

until hdfs dfs -test -d / && ! hdfs dfsadmin -safemode get | grep -q "ON"; do
    echo "HDFS initialization. Waiting for NameNode to exit safe mode"
    sleep 3
done

echo "Initializing warehouse directories"

hdfs dfs -mkdir -p /raw
hdfs dfs -chown -R nifi:raw /raw
hdfs dfs -chmod -R 755 /raw

wait "$ID"