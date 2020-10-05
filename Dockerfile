FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install python3.8 -y
RUN python3 --version
RUN apt-get install nmap curl wget -y
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3 get-pip.py
