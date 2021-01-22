FROM nginx:1.17.4

RUN rm -rf /etc/nginx/conf.d/*
RUN rm /etc/nginx/nginx.conf

RUN mkdir /etc/nginx/ssl

RUN chown -R root:root /etc/nginx/ssl
RUN chmod -R 600 /etc/nginx/ssl

COPY configs/ /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/nginx.conf