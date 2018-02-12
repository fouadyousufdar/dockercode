######################
# We are going to build a docker image here which will run the basic access commands on the machine and extract the
#useful information
#####################
FROM centos:latest
#a name can be given to a new build stage by adding AS name to the FROM instruction.
#ARG VERSION=0.0.0
LABEL NAME = AT-image START_TIME = 2018.01.13 FOR="Alibaba Cloud INTL Support Team" AUTHOR = "Fouad"
LABEL DESCRIPTION = "This image is built for access testing of an IP All over the world"
LABEL VERSION = 0.0.0
#Installing the tools and the dependencies of Python installation
RUN yum update -y && yum install wget tar nmap telnet openssh-clients.x86_64 gcc openssl-devel bzip2-devel make -y && yum groupinstall "Development Tools" -y
#download Python package
RUN wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz
#extract and install Python
RUN tar xzf Python-3.6.3.tgz && cd Python-3.6.3 && ./configure --enable-optimizations && make altinstall && cd .. && rm -f /usr/src/Python-3.6.3.tgz
ADD ./pub.py /
#CMD ["python3.6", "pub.py"]
