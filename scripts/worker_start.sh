#!/bin/bash
/usr/local/spark/bin/spark-class org.apache.spark.deploy.worker.Worker spark://$SPARKMASTER_PORT_7077_TCP_ADDR:7077
