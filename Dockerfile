# syntax=docker/dockerfile:1
FROM ubuntu:23.10
# Update and upgrade--> Operating System and TZ
RUN apt-get update
RUN apt-get upgrade -y
ENV TZ=America/Bogota
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get install -y tzdata
# Install--> wget
RUN apt-get install -y wget
# Install--> python3, pip package manager and virtualenv
RUN apt-get install -y python3 python3-pip python3-virtualenv
# Create--> Python3 virtualenv
RUN python3 -m virtualenv /opt/SARA/
# Install--> jam-py package
RUN /opt/SARA/bin/python3 -m pip install jam.py
# Add--> sarastart.sh file (virtualenv activate, jam-project create and run SARA server)
ADD sarastart.sh /opt/SARA/sarastart.sh
ENTRYPOINT [ "/bin/bash", "/opt/SARA/sarastart.sh"]
