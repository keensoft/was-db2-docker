# IBM DB2 Express
IBM DB2 Express container 

Created from **ibmcom/db2express-c:10.5.0.5-3.10.0**

# Description
Creates a new container from IBM provided one, adding new database with JSON support. 

DB2 command line processor is used so it should be possible to change the base version without problems.

# Assets
## createdb.sh
Shell script that performs the needed modifications

# Modifications:
1. Creates new **database DOCKER**.
2. Creates new **schema DOCKER**, in database DOCKER.
3. Activates **JSON support**, in database DOCKER.

# Credentias
**db2inst1** user provided from base. Password **keensoft** configured at runtime via environment value *DB2INST1_PASSWORD*.
