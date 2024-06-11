# Use the official Nginx image from the Docker Hub
FROM nginx

# Declare build arguments with default values
ARG INDEX_HTML=index.html
ARG IMG_DIR=img
ARG SECRET_PASSWORD

# Copy the files from the build context to the appropriate location in the container
COPY ${INDEX_HTML} /usr/share/nginx/html/
COPY ${IMG_DIR} /usr/share/nginx/html/${IMG_DIR}

# Echo the secret password (for demonstration purposes)
RUN echo "The secret password is: ${SECRET_PASSWORD}"

#dummy secrets
RUN echo "sk_test_4eC39HqLyjWDarjtT1zdp7dc"
RUN echo "ghp_1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcd"
