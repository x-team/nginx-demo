FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD index.html /www/data/index.html

EXPOSE 80
CMD ["nginx"]