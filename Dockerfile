FROM nginx:1.27-alpine

# Render sets PORT at runtime; 10000 is its default
ENV PORT=10000

# nginx image runs envsubst on files in /etc/nginx/templates at startup
COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 10000
