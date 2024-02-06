DOCKER_REPO = 242131/ignat24
APP_VERSION = 1.0
DOCKER_TOKEN =

build:
	docker build -t ${DOCKER_REPO}:${APP_VERSION} .

start:
	docker run -d -p 80:80 ${DOCKER_REPO}:${APP_VERSION}

push:
	docker login -u 242131 -p ${DOCKER_TOKEN}
	docker push ${DOCKER_REPO}:${APP_VERSION}