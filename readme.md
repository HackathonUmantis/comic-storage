# readme

## Sources:
http://database.guide/how-to-create-a-database-from-a-script-in-mysql/
https://stackoverflow.com/questions/25920029/setting-up-mysql-and-importing-dump-within-dockerfile
https://stackoverflow.com/questions/1308339/create-a-one-to-many-relationship-using-sql-server
https://gist.github.com/omeinusch/6397770
https://www.postgresql.org/message-id/agcr22$clo$1@news.tpi.pl

## Docker usage

1. build image:

$ docker build --no-cache -t dbi .

2. run image:

$ docker run --name db -p 5432:5432 dbi

3. start container:

$ docker start db

4. run shell in container:

$ docker exec -it db bash

## Docker-compose usage
