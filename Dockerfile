# Use the nginx base image
FROM nginx

# Define a build argument for the YAML content
ARG CONFIG_YAML

# Create a directory for the config file
RUN mkdir -p /usr/share/nginx/config

# Write the YAML content to config.yaml
RUN echo "$CONFIG_YAML" > /usr/share/nginx/config/config.yaml

# Copy other required files
COPY index.html /usr/share/nginx/html/
COPY img /usr/share/nginx/html/img/

# Run the cat command to display the YAML file contents
RUN cat /usr/share/nginx/config/config.yaml
