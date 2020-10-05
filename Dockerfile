FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install python3.8 python3-pip -y
RUN apt-get install nmap curl wget -y
