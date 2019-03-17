FROM nginx

COPY default.conf /etc/nginx/conf.d/default.conf
COPY ./dashboard /etc/nginx/html
COPY start.sh /
RUN chmod +x /start.sh
ENTRYPOINT /start.sh