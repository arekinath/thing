FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY sites/* /etc/nginx/sites-enabled/
COPY conf.d/* /etc/nginx/conf.d/

EXPOSE 80/tcp
EXPOSE 443/tcp
