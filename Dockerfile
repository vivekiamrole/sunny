# Use an official Nginx base image
FROM nginx:latest

# Label indicating the maintainer of the image
LABEL maintainer="Your Name <your.email@example.com>"

# Copy custom HTML file to the default Nginx public folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to allow external access
EXPOSE 80

# Command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

