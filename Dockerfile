FROM ubuntu:14.04

MAINTAINER Muhammet GÜMÜŞ (muhgumus@gmail.com)

# install nginx
RUN apt-get update -y
RUN apt-get install -y python-software-properties
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update -y
RUN apt-get install -y nginx

# deamon mode off
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx

# expose ports
EXPOSE 80 8443

COPY ./certs /etc/nginx/certs/
# add nginx conf
ADD config/default.conf /etc/nginx/conf.d/default.conf

WORKDIR /etc/nginx

CMD ["nginx"]