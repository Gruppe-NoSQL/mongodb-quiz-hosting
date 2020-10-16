docker-compose down
docker system prune -f
docker rmi $(docker images -a -q)
cd nosql-quiz-frontend
git pull
cd ~
cd nosql-quiz-backend
git pull
cd ~
cd nosql-quiz-hosting
git pull
/bin/cp -a . ..
cd ~
chmod 600 acme.json
chmod +x startContainers.sh
chmod +x stopContainers.sh
chmod +x updateContainers.sh
docker network create web
docker-compose up --build -d