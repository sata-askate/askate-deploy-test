FROM nginx:1.27-alpine
ARG COMMIT=unknown
COPY index.html /usr/share/nginx/html/index.html
RUN sed -i "s/__COMMIT__/${COMMIT}/g" /usr/share/nginx/html/index.html \
 && echo ok > /usr/share/nginx/html/healthz
