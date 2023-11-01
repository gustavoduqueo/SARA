# syntax=docker/dockerfile:1
FROM ubuntu:23.10
# Update and upgrade--> Operating System and TZ
RUN apt-get update
RUN apt-get upgrade -y
RUN export TZ=America/Bogota
# Install--> wget
RUN apt-get install -y wget
# Install--> python3, pip package manager and virtualenv
RUN apt-get install -y python3 python3-pip python3-virtualenv
# Activate--> Python3 virtualenv
RUN source /opt/SARA/bin/activate
# Install jam-py package
RUN /opt/SARA/bin/python3 /opt/SARA/bin/jam-proyect.py
# Run--> Jam Server
RUN /opt/SARA/bin/python3 /opt/SARA/bin/server.py > /opt/SARA/saralog.txt 2>&1 &
