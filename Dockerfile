############################################################
# Dockerfile to build Python WSGI Application Containers
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM node:0.10-onbuild

# File Author / Maintainer
MAINTAINER Jose Vidal 

# Install jsbin
RUN npm install -g jsbin 

# Export config file
ADD config.dookio.json /tmp/config.dookio.json

 Export JSBIN_CONFIG env var 
ENV JSBIN_CONFIG /tmp/config.dookio.json

# Expose ports
EXPOSE 80

ENTRYPOINT ["jsbin"]
