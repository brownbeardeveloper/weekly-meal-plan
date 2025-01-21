# Use stable NGINX version as base image
FROM nginx:1.26.2

# Copy static website files into the container
COPY ./index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]