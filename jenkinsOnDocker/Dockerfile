FROM jenkins

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
COPY jobs/seed.xml /usr/share/jenkins/ref/jobs/seedjob/config.xml
COPY security.groovy /usr/share/jenkins/ref/init.groovy.d/security.groovy
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY config/.profile /var/jenkins_home/.profile
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins

