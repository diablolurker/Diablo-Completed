#Use the official Nginx image as the base image
FROM nginx:latest

# Copy the entire directory containing your HTML files, CSS, JS, images, etc. into the Nginx server's root directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

