init: docker-down docker-pull docker-build docker-up jenkins-permissions
up: docker-up
down: docker-down

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build

show-initial-password:
	docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

jenkins-permissions:
	docker-compose run --rm -u root jenkins sh -lc 'chown -R 1000:1000 /var/jenkins_home/workspace'