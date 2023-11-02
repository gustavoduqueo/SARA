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
# Set and Activate--> Python3 virtualenv
RUN python3 -m virtualenv /opt/SARA/
RUN . /opt/SARA/bin/activate
# Install jam-py package
RUN /opt/SARA/bin/python3 -m pip install jam.py
RUN cd /opt/SARA/
RUN /opt/SARA/bin/python3 /opt/SARA/bin/jam-project.py
# Add sarastart.sh file
ADD sarastart.sh /opt/SARA/sarastart.sh
# ENTRYPOINT [ "/bin/bash", "/opt/SARA/sarastart.sh"]
