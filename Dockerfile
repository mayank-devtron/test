# Use the nginx base image
FROM nginx

ARG MY_VAR=default_value
ARG EXAMPLE_TEXT="Default example text content"

RUN echo "MY_VAR: ${MY_VAR}"
RUN echo '${EXAMPLE_TEXT}' > /example.txt
RUN cat /example.txt
# Copy a directory into the container
COPY img /usr/share/nginx/html/img/
