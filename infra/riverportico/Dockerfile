# Step 1: Use the official, ultra-lightweight Nginx web server as our base foundation
FROM nginx:alpine

# Step 2: Delete any default welcome screens or placeholder files shipped inside Nginx
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy your local index.html file into Nginx's public delivery path inside the container
COPY index.html /usr/share/nginx/html/index.html

# Step 4: Document that this container listens on port 80 for incoming web traffic
EXPOSE 80
