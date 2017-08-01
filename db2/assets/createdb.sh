db2start
db2 create db DOCKER
db2 connect to DOCKER
db2 create schema DOCKER
cd sqllib/json/bin/
./db2nosql.sh -db DOCKER -setup enable

exit 0