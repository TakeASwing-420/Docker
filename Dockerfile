# Use Alpine Linux as the base image
FROM alpine:latest

# Define a build-time argument (optional)
ARG APP_VERSION

LABEL version=${APP_VERSION}

# Install Node.js and npm using apk package manager
RUN apk update && \
    apk add --no-cache nodejs npm

# Set the working directory
WORKDIR /app

# Copy application files
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY index.js main.js

# Install npm dependencies
RUN npm install

# Command to run the app
CMD ["node", "main.js"]
