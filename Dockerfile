# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Copy custom Nginx configuration file
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy the HTML file to the Nginx HTML directory
COPY Personal /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
