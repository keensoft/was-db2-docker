# was-db2-docker
IBM WebSphere and DB2 containers with JDBC connection

# Description
Docker composition to ease application testing in IBM WebSphere environment. It contains IBM WebSphere Application Server and IBM DB2 database server connected using server datasource.

Servers base is created using IBM provided containers in [Docker Hub](https://hub.docker.com/u/ibmcom/) .

You can add your application to WebSphere container assets to be automatically deployed. See detailed info in _was_ dir.

# Volumes
A shared volume is created between the containers to use DB2 drivers in WebSphere JDBC provider.

# Usage
docker-compose up 

# Credentials
## DB2
DB2 provided user **db2inst1** is used to send all commands to database. Password is configured to **keensoft** via environment value *DB2INST1_PASSWORD*.
## WebSphere
WebSphere provided user is **wsadmin**. Password is configured to **keensoft** via assets file.

# URLs
* **IBM WebSphere Administrative Console:** https://_docker-machine-ip_:9043/ibm/console
* **Deployed application:** http://_docker-machine-ip_:9080/docker
* **IBM DB2 database connector:**  _docker-machine-ip_:50000

