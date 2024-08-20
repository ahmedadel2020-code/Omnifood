# Use the official Nginx image as a parent image
FROM nginx:alpine

# Copy the static content to the Nginx server
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]