#almalinux:9 is the base image which is a free similar to redhat
FROM almalinux:9 
RUN dnf install nginx -y
CMD [ "nginx", "-g", "daemon off;" ]
LABEL COURSE="DOCKER" \
      AUTHOR="LAKSHMI" \
      VERSION="1.0" \
      DESCRIPTION="This is a sample dockerfile to demonstrate LABEL instruction" \
      DURATION="30 mins"