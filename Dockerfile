FROM nginx:1.18.0-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/default.conf

RUN mkdir /scripts
WORKDIR /scripts
COPY start.sh /scripts/start.sh
