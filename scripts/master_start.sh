#!/bin/bash
HOSTIP=`hostname --ip-address`
echo "starting master on " $HOSTIP
/usr/local/spark/bin/spark-class org.apache.spark.deploy.master.Master  -h $HOSTIP
