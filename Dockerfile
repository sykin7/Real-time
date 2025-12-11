FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY entrypoint.sh /docker-entrypoint.d/99-inject-env.sh
RUN chmod +x /docker-entrypoint.d/99-inject-env.sh
