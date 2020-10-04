FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install curl wget -y
RUN apt-get install python3 pip -y
