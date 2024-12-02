# Use the Nginx image
FROM nginx:latest

# Copy the website files to the container
COPY ./html /usr/share/nginx/html
