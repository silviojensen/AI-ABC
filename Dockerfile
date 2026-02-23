FROM nginx:alpine
# Kopieer je werkende index.html naar de juiste map in de container
COPY index.html /usr/share/nginx/html/index.html

# Vertel Nginx om op poort 8080 te luisteren in plaats van 80
RUN sed -i 's/listen  80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

# Laat Google Cloud weten dat poort 8080 open staat
EXPOSE 8080
