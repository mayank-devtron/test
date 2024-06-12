FROM nginx
COPY index.html /usr/share/nginx/html/
COPY img /usr/share/nginx/html/img/

# Copy a file into the container
COPY example.txt /example.txt

# Run the cat command to display the file contents
RUN cat /example.txt
