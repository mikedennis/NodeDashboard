FROM nginx

COPY default.conf /etc/nginx/conf.d/default.conf
RUN mkdir /etc/nginx/html/dashboard
COPY ./dashboard /etc/nginx/html/dashboard
COPY start.sh /
RUN chmod +x /start.sh
ENTRYPOINT /start.sh