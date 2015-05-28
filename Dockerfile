FROM centos:6
MAINTAINER Bill W
RUN rpm -Uvh  http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum -y update
RUN yum -y install java-1.7.0-openjdk java-1.7.0-openjdk-devel git rpm-build unzip fakeroot dpkg
RUN useradd rundeck
USER rundeck
RUN git clone https://github.com/rundeck/rundeck.git /home/rundeck/rundeck
ENV JAVA_HOME=/etc/alternatives/java_sdk
WORKDIR /home/rundeck/rundeck
