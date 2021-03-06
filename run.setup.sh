echo Setting hosts dependencies
./hosts.setup.sh

echo Create network dependencies
docker network create system_network

echo Starting setup at your development enviroment
docker-compose up --build -d --remove-orphans

echo Checking dependencies ...

sleep 15s

docker restart respondent_service
docker restart question_service
docker restart survey_service
docker restart nginx

sleep 5s

docker ps -a