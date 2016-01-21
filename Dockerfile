############################################################
# Dockerfile to build Python Application Containers
# Based on ipython/notebook
############################################################

# Set the base image to ipython/notebook
FROM ipython/notebook

# File Author / Maintainer
MAINTAINER Maintaner Name

# Update the sources list
RUN apt-get update

# Install Python basic applications
RUN apt-get install -y python-pip python-dev build-essential 
RUN apt-get install -y libxml2-dev libxslt1-dev gfortran g++ libblas-dev liblapack-dev
RUN apt-get install -y python-matplotlib

# Get pip to download and install requirements:
RUN python2.7 /usr/local/bin/pip install lxml
RUN python2.7 /usr/local/bin/pip install pandas==0.13.1
RUN python2.7 /usr/local/bin/pip install tushare
RUN python2.7 /usr/local/bin/pip install zipline
RUN python2.7 /usr/local/bin/pip install -U python-dateutil==2.3.0
