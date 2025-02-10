FROM ubuntu:18.04
WORKDIR /usr
RUN mkdir teste
RUN apt-get update -y
RUN apt update -y
RUN apt install curl -y
RUN apt install nano -y
