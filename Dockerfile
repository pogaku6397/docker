# creating a centos image
#FROM centos:7
#RUN yum update -y && yum install tree -y && yum install nano -y
#RUN mkdir -p /opt/sudheer && touch f1 f2 
#CMD ["/bin/bash"]
#------------------------------------------------------------------------------
# creating a ubuntu container and installing git in it.
#FROM ubuntu
#MAINTAINER sudheer
#RUN apt-get update
#RUN apt-get install -y git
#USER root
#------------------------------------------------------------------------------

#------------------------------Calling via shell script------------------------------------------------
FROM ubuntu
MAINTAINER sudheer
COPY ./script.sh /
RUN ./script.sh
ADD https://get.jenkins.io/war-stable/2.263.4/jenkins.war  /

# Check if the script.sh is present in / and also see if tree and git are installed
#  ls  /
 # git --version
  #tree

#------------------------------Calling via shell script ends here------------------------------------------------



