FROM jenkins/inbound-agent:4.3-4-alpine as jnlp

FROM docker:19.03.11-git

RUN apk -U add openjdk11-jre

COPY --from=jnlp /usr/local/bin/jenkins-agent /usr/local/bin/jenkins-agent
COPY --from=jnlp /usr/share/jenkins/agent.jar /usr/share/jenkins/agent.jar

USER jenkins

ENTRYPOINT ["/usr/local/bin/jenkins-agent"]
