# Use a lightweight base image
FROM alpine:latest

# Set the build argument
ARG CONFIG_YAML

# Print the CONFIG_YAML argument to a file
RUN echo "$CONFIG_YAML" > /config.yaml

# Set the entrypoint to cat the file
ENTRYPOINT ["cat", "/config.yaml"]
