# use nginx as base image and host static files
FROM nginx:1.17.1-alpine

# copy static files to nginx default path
COPY ./ /usr/share/nginx/html
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# expose port 80
EXPOSE 6666