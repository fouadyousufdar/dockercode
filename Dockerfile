FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install python3.8 python3-pip -y
RUN cd "$(dirname $(which python3))" \
    && ln -s idle3 idle \
    && ln -s pydoc3 pydoc \
    && ln -s python3 python \ # this will properly alias your python
    && ln -s python3-config python-config
RUN apt-get install nmap curl wget -y
