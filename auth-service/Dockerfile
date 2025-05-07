# Use Nginx to serve static files
FROM nginx:alpine

# Clean default Nginx html files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files to the Nginx html folder
COPY public/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
