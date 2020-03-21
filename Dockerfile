######################
# My Ubuntu Image
#####################
FROM utuntu:latest

LABEL VERSION = 0.0.0
RUN apt-get update -y && apt-get install wget tar nmap telnet openssh-clients.x86_64 gcc openssl-devel bzip2-devel make -y && apt-get groupinstall "Development Tools" -y
