FROM nginx:latest 
RUN sed -i 's/nginx/Formation-DevOps/g' /usr/share/nginx/html/index.html 
EXPOSE 80
