sudo docker build --no-cache -t alekzander7c4/test_py .
sudo docker ps -a
sudo docker run -dp 8888:5000 --net test_network --name srv-app-01 --rm alekzander7c4/test_py

sudo docker run -dp 3306:3306 --net test_network --name srv-mysql-01 --rm -e MYSQL_ROOT_PASSWORD=pass123456 mysql




sudo docker network create test_network
sudo docker network ls
sudo docker network inspect test_network



curl http://127.0.0.1:8888/
