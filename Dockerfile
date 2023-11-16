# Use the official Nginx image as the base image
FROM nginx:latest

# Copy the local HTML file to the Nginx default public directory
COPY index.html /usr/share/nginx/html

# Set the working directory to the default Nginx public directory
WORKDIR /usr/share/nginx/html

# Expose port 80 to the external world
EXPOSE 80

# Set the default command to start Nginx when the container starts
ENTRYPOINT ["nginx", "-g", "daemon off;"]