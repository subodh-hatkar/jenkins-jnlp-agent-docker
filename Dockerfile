FROM jenkins/inbound-agent:4.3-4-alpine as jnlp

FROM docker:19.03.11-git

RUN apk -U add openjdk11 libcurl curl

COPY --from=jnlp /usr/local/bin/jenkins-agent /usr/local/bin/jenkins-agent
COPY --from=jnlp /usr/share/jenkins/agent.jar /usr/share/jenkins/agent.jar

ENTRYPOINT ["/usr/local/bin/jenkins-agent"]
