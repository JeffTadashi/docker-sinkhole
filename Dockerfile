FROM nginx:mainline-alpine
LABEL example="docker run -d --restart unless-stopped -p 80:80 -p 443:443 --name sinkhole jefftadashi/sinkhole"

RUN rm /etc/nginx/conf.d/default.conf
RUN rm /usr/share/nginx/html/index.html

COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY nginx-selfsigned.crt /etc/ssl/certs/nginx-selfsigned.crt
COPY nginx-selfsigned.key /etc/ssl/private/nginx-selfsigned.key

EXPOSE 80
EXPOSE 443