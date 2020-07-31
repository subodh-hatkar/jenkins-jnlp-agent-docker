FROM subodhhatkar/jenkins-jnlp-agent-openjdk:11.0.7-jre-slim-buster

# Install Docker client
ARG DOCKER_VERSION=19.03.12
ARG DOCKER_COMPOSE_VERSION=1.26.2
RUN curl -fsSL https://download.docker.com/linux/static/stable/`uname -m`/docker-${DOCKER_VERSION}.tgz | \
    tar --strip-components=1 -xz -C /usr/local/bin docker/docker
RUN curl -fsSL https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` \
    > /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
