FROM nginx:alpine
LABEL maintainer="saib@gmail.com"
COPY index.html /usr/share/nginx/html/
EXPOSE 80
HEALTHCHECK CMD curl --fail http://localhost/ || exit 1
CMD ["nginx", "-g", "daemon off;"]
