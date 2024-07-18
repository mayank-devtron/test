FROM nginx
COPY index.html /usr/share/nginx/html/

ARG EXAMPLE_TEXT=Default example text content
RUN echo "${EXAMPLE_TEXT}"  > /example.txt
RUN cat /example.txt
# Copy a directory into the container
COPY img /usr/share/nginx/html/img/
