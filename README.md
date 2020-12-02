# Deploy mysql database via docker
- Build the image
```
$ docker build -t wdf000/mysql . 
```

- Run the docker container
```
$ docker run --name mysql  -e MYSQL_ROOT_PASSWORD=root@123456 -itd wdf000/mysql
```
Docker will run the shell in docker-entrypoint-initdb.d and load the database information. 

- See logs
```
$ docker logs -f mysql
```

- Verify the data

```
mysql -u admin -p
```
check whether it has the database docker_mysql.
```
show databases;
```

check whether it has the tables.
```
use docker_mysql;
show tables;
```

check whether it has records.
```
select * from t_work;
```

