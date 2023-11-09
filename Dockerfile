# Use the official Nginx image as the base image
FROM nginx:1.21

# Copy your custom nginx configuration file to the container
COPY /nginx-conf/proxy.conf /etc/nginx/conf.d/default.conf

# Expose the necessary ports
EXPOSE 80
# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]