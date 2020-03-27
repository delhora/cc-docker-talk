### Intro

Talk in Corona Coders, introducing how to dockerize simple python app

## Commands

* Generate docker image for python

`docker build -t corona/app .`

* Creating network

`docker network create corona`

* Running python app

```
docker run -v $(pwd):/usr/src/app -e MYSQL_USER=corona -e MYSQL_PASS=my-secret-pw -e MYSQL_DB=corona -e MYSQL_HOST=mysql --net=corona -p 5000:5000  -d corona/app
```

* Generate docker image for MySQL

`docker build -t corona/mysql -f Dockerfile.mysql .`

* Running mysql

```
docker run -d --net=corona  -e MYSQL_ROOT_PASSWORD=corona -e MYSQL_PASSWORD=my-secret-pw -e MYSQL_USER=corona -e MYSQL_DATABASE=corona --name mysql corona/mysql
```