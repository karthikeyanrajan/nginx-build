FROM ubuntu

LABEL maintainer="karthi"

RUN apt-get update && \
    apt-get install -y -q curl gnupg2
RUN curl http://nginx.org/keys/nginx_signing.key | apt-key add -

RUN apt-get update && \
    apt-get install -y -q nginx

RUN apt-get install wget && apt install unzip -y

RUN wget https://www.tooplate.com/zip-templates/2107_new_spot.zip && unzip 2107_new_spot.zip -d /var/www/html

RUN cd /var/www/html/2107_new_spot 

RUN chmod 777 /var/www

RUN mv /var/www/html/2107_new_spot/* /var/www/html 

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]


