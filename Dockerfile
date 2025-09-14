# Use a small nginx image
FROM nginx:alpine


# Remove the default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your wedding website into nginx's public folder
#COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
