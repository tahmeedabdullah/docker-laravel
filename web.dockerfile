FROM nginx:1.21

COPY vhost.conf /etc/nginx/conf.d/default.conf
