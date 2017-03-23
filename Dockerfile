FROM ubuntu:16.04 

ENV http_proxy http://web-proxy.corp.hpecorp.net:8080
ENV https_proxy http://web-proxy.corp.hpecorp.net:8080

RUN apt-get update -y
RUN apt-get install -y python-pip
RUN pip install --upgrade pip
RUN apt-get install -y python-tk
RUN pip install ipython matplotlib
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y xorg
ADD files / 

