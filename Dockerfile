FROM ubuntu:16.04
RUN apt-get update -y && apt-get install \
    apache2 -y \
    apache2-utils -y \ 
    nano -y \
    && apt-get clean \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
EXPOSE 80
CMD [ "apache2ctl","-D","FOREGROUND" ]
