FROM nginx:latest
LABEL "VERSION"="My first nginx"
LABEL "AUTHOR"="Karthikeyan"
RUN apt-get update && apt install curl
WORKDIR /usr/share/nginx/html
EXPOSE 80
COPY gameing /usr/share/nginx/html
