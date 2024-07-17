# Use the nginx base image
FROM nginx

ARG MY_VAR=default_value
RUN echo "MY_VAR: ${MY_VAR}"

# Copy a directory into the container
COPY img /usr/share/nginx/html/img/


