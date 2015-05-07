FROM centos:centos6
MAINTAINER Bill W
RUN rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
RUN yum -y update
RUN yum -y install puppet hiera facter 
RUN puppet resource package puppet ensure=latest
RUN puppet resource package facter ensure=latest
RUN puppet resource package hiera  ensure=latest
# RUN service puppet restart
RUN yum -y install java-1.7.0-openjdk
RUN puppet resource yumrepo bintray-rundeck baseurl='http://dl.bintray.com/rundeck/rundeck-rpm/' descr='bintray rundeck repo' enabled='1' gpgcheck='0' priority='1'
RUN puppet resource package rundeck ensure=latest
RUN puppet resource package wget    ensure=latest
RUN wget https://github.com/rundeck-plugins/rundeck-ec2-nodes-plugin/releases/download/1.5/rundeck-ec2-nodes-plugin-1.5.jar -O /var/lib/rundeck/libext/rundeck-ec2-nodes-plugin-1.5.jar
CMD source /etc/rundeck/profile && ${JAVA_HOME:-/usr}/bin/java ${RDECK_JVM} -cp ${BOOTSTRAP_CP} com.dtolabs.rundeck.RunServer /var/lib/rundeck ${RDECK_HTTP_PORT}
