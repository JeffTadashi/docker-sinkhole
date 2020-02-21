FROM nginx:mainline-alpine
LABEL description="docker run --rm -p 80:80 -p 443:443 -d"

RUN rm /etc/nginx/conf.d/default.conf
RUN rm /usr/share/nginx/html/index.html

COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html

