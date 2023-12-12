# use nginx as base image and host static files
FROM --platform=${BUILDPLATFORM:-linux/amd64} nginx

# copy static files to nginx default path
COPY ./ /usr/share/nginx/html/

RUN chmod +r /usr/share/nginx/html/*
RUN chmod +r /usr/share/nginx/html/assets/*

# expose port 80
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]