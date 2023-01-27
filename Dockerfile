# creating a centos image
#FROM centos:7
#RUN yum update -y && yum install tree -y && yum install nano -y
#RUN mkdir -p /opt/sudheer && touch f1 f2 
#CMD ["/bin/bash"]

# creating a ubuntu container and installing git in it.
FROM ubuntu
MAINTAINER sudheer
RUN apt-get update
RUN apt-get install -y git

