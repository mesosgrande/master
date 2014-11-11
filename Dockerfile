FROM centos:centos7
MAINTAINER Mesosgrande / Leon Vliegenthart (lvlie)

WORKDIR /tmp

# install java and mesos rpm
RUN yum install -y java-1.7.0-openjdk-headless http://downloads.mesosphere.io/master/centos/7/mesos-0.20.1-1.0.centos701406.x86_64.rpm && yum clean all

WORKDIR /tmp

VOLUME ["/etc/mesos", "/etc/mesos-master"]

EXPOSE 5050
CMD ["mesos-master"]
