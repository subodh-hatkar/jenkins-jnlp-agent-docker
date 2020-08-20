FROM subodhhatkar/jenkins-jnlp-agent-openjdk:11.0.8-jre-slim-buster

ARG DOCKER_APP=docker
ARG DOCKER_VERSION=19.03.12
ARG DOCKER_ARCH=x86_64
RUN wget https://download.docker.com/linux/static/stable/${DOCKER_ARCH}/${DOCKER_APP}-${DOCKER_VERSION}.tgz \
    -O ${DOCKER_APP}.tgz && \
    tar -xvf ${DOCKER_APP}.tgz && \
    mv ${DOCKER_APP}/${DOCKER_APP} /usr/local/bin

ARG DOCKER_COMPOSE_APP=docker-compose
ARG DOCKER_COMPOSE_VERSION=1.26.2
ARG DOCKER_COMPOSE_ARCH=Linux-x86_64
RUN wget https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/${DOCKER_COMPOSE_APP}-${DOCKER_COMPOSE_ARCH} \
    -O ${DOCKER_COMPOSE_APP} && \
    chmod +x ${DOCKER_COMPOSE_APP} && \
    mv ${DOCKER_COMPOSE_APP} /usr/local/bin