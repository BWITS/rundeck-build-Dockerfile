FROM centos
MAINTAINER Bill W
FROM bwit/rundeck
RUN rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
RUN yum -y update
RUN yum -y puppet hiera facter 
RUN puppet resource package puppet ensure=latest
RUN puppet resource package facter ensure=latest
RUN puppet resource package hiera  ensure=latest
RUN service puppet restart
RUN puppet resource yumrepo bintray-rundeck baseurl='http://dl.bintray.com/rundeck/rundeck-rpm/' descr='bintray rundeck repo' enabled='1' gpgcheck='0' priority='1'
RuN puppet resource package rundeck ensure=latest
