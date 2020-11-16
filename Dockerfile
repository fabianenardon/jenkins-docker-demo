FROM jenkins/jenkins:lts

USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

RUN curl -sSL https://get.docker.com/ | sh && \
    apt-get purge -y docker-engine && \
    apt-get install docker-ce

RUN curl -L https://github.com/docker/compose/releases/download/1.11.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && \
	chmod +x /usr/local/bin/docker-compose

RUN usermod -aG docker jenkins

USER jenkins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/plugins.txt

COPY settings.xml /root/.m2/


