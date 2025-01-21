FROM nginx:1.26.2

# Install OpenSSL to generate self-signed certificates
RUN apt-get update && apt-get install -y openssl && apt-get clean

# Copy the custom nginx config file
COPY nginx.conf /etc/nginx/nginx.conf

# Create the directory to store certificates
RUN mkdir -p /etc/nginx/certs

# Generate SSL certificates (self-signed) on container startup if they don't exist
CMD if [ ! -f /etc/nginx/certs/localhost.crt ]; then \
    openssl req -x509 -newkey rsa:4096 -keyout /etc/nginx/certs/localhost.key -out /etc/nginx/certs/localhost.crt -days 365 -nodes -subj "/CN=localhost"; \
    fi && \
    nginx -g "daemon off;"