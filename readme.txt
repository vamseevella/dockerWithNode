docker build -t vamsee/node-docker-app .
docker images
docker run -p 49160:8080 -d vamsee/node-docker-app
docker ps
docker logs 8f17c295c482
docker stop db4ab46cf7b5576eee944920843dd448fc115585ccaf8f541ed60ac395721151
rm -rf *