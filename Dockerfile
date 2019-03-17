FROM nginx:1.10-alpine

COPY default.conf /etc/nginx/conf.d/default.conf
COPY ./dashboard /usr/share/nginx/html
COPY start.sh /
RUN chmod +x /start.sh
ENTRYPOINT /start.sh