# IBM WebSphere Traditional
IBM WebSphere Application Server container

Created from **ibmcom/websphere-traditional:9.0.0.4-profile**

# Description
Creates a new container from IBM provided one, adding datasource to db2 container.

Jython script processor is used so it should be possible to change the base version without problems.

# Assets
## PASSWORD
User's *wsadmin* password.

## start-server.sh
Shell script to start the server during configuration using Jython scripts.

## create-datasource.jython
Jython script to create datasource in WebSphere:

1. Creates JDBC provider.
2. Creates JASS authentication credentials.
3. Creates datasource using provider and credentials.
4. Configures extra datasource properties.
5. Saves all changes.

## install-application.sh
Shell script to launch Jython script to install new application. Only executes when *application.war* is provided.

## install-application.jython
Jython script to install application:
1. Installs application from */war/application.war*.
2. Saves changes.
3. Starts application.

# Modifications:
1. Copies required assets to configure datasource.
2. Creates datasource.
3. Copies application war.
4. Copies required assets to install application.
5. Installs application if provided.

# Credentias
**wsadmin** user provided from base. Password **keensoft** configured at build via asset file *PASSWORD*.