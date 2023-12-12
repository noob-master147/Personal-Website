# use nginx as base image and host static files

FROM nginx:1.17.1-alpine

# copy static files to nginx default path
COPY ./ /usr/share/nginx/html

# expose port 80
EXPOSE 6666

# run nginx
CMD ["nginx", "-g", "daemon off;"]