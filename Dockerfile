FROM nginx

RUN rm /etc/nginx/conf.d/default.conf

RUN rm /etc/nginx/nginx.conf

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/default.conf /etc/nginx/conf.d/default.conf