FROM nginx

RUN rm -fr /etc/nginx/sites-enabled
RUN rm -fr /etc/nginx/conf.d

COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d /etc/nginx/conf.d
COPY sites /etc/nginx/sites-enabled

COPY htdocs /var/www/htdocs

EXPOSE 80/tcp
EXPOSE 443/tcp
