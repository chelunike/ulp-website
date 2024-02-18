FROM node:lts-alpine as builder

WORKDIR /app

COPY . /app

# Ensure that latest minor and patch for NPM is installed
RUN npm install -g npm@10

# Install and build
RUN npm install
RUN npm run build

FROM nginx:alpine as runtime

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html

# Copy built site
COPY --from=builder /app/dist /usr/share/nginx/html

# Expose default Nginx port
EXPOSE 80

# Start Nginx with global directives and daemon turned off
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]