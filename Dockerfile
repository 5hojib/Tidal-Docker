FROM ubuntu:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Dhaka

RUN apt-get -qq update --fix-missing 


RUN apt install -y python3-pip

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt