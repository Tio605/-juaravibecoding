FROM nginx:stable-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
RUN chmod -R 755 /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]