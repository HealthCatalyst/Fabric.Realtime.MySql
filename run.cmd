docker stop fabric.realtime.mysql
docker rm fabric.realtime.mysql
docker build -t healthcatalyst/fabric.realtime.mysql . 

docker volume rm mysqldata

docker volume create --name mysqldata

docker run -v mysqldata:/var/lib/mysql -d -p 3306:3306 --rm --name fabric.realtime.mysql -e MYSQL_ROOT_PASSWORD=new-password -e MYSQL_DATABASE=mirthdatabase -e MYSQL_USER=NLP_APP_USER -e MYSQL_PASSWORD=yourpassword -t healthcatalyst/fabric.realtime.mysql

sleep 5

