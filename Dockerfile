# Gebruik een simpele webserver
FROM nginx:alpine

# Kopieer alle bestanden van je laptop naar de webserver
COPY . /usr/share/nginx/html

# Zorg dat de server op poort 8080 draait (nodig voor Google Cloud)
RUN sed -i 's/listen[[:space:]]*80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

# Vertel Google dat we poort 8080 gebruiken
EXPOSE 8080
