# Use the nginx base image
FROM nginx

# Define build arguments
ARG EXAMPLE_TEXT

# Copy a directory into the container
COPY img /usr/share/nginx/html/img/

# Use build arguments to create the example.txt file
RUN echo '${EXAMPLE_TEXT}' > /example.txt

# Run the cat command to display the file contents
RUN cat /example.txt
