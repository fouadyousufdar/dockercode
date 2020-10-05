FROM ubuntu:latest

RUN apt install software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update -y
RUN apt install python3.8 -y
RUN python ––version
RUN apt-get install nmap curl wget -y
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python get-pip.py
