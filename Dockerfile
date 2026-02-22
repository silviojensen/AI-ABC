FROM nginx:alpine

# Verwijder eerst de standaard Google/Nginx bestanden
RUN rm -rf /usr/share/nginx/html/*

# Kopieer nu jouw eigen bestanden naar de server
COPY . /usr/share/nginx/html

# Zet de poort naar 8080 voor Google Cloud
RUN sed -i 's/listen[[:space:]]*80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

EXPOSE 8080
