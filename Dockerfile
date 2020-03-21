######################
# My Ubuntu Image
#####################
FROM ubuntu:latest

LABEL VERSION = 0.0.0
RUN apt-get update -y && apt-get install wget curl -y
