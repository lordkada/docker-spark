# docker-spark

Spark v1.2.2 container that can be started as _master_ or _worker_. 

Since it uses the IP addresses (instead of symbolic) to start the master and the worker services, it is particularly suitable for development purposes.

## Docker-compose excerpt

    sparkmaster:
	  image: lordkada/docker-spark
	  hostname: sparkmaster
	  expose:
	    - "7001"
	    - "7002"
	    - "7003"
	    - "7004"
	    - "7005"
	    - "7006"
	    - "7077"
	    - "6066"
	  ports:
	    - "4040:4040"
	    - "6066:6066"
	    - "7077:7077"
	    - "8080:8080"
	
	sparkworker:
	  image: lordkada/docker-spark
	  command: /usr/local/worker_start.sh
	  hostname: sparkworker
	  links:
	    - sparkmaster
	  expose:
	    - "7012"
	    - "7013"
	    - "7014"
	    - "7015"
	    - "7016"
	    - "8881"
	  ports:
	    - "8081:8081"

