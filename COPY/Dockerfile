FROM nginx:1.29.8
# RUN: removing the default index.html file from nginx image so COPY will replace it with our custom index.html file
RUN rm /usr/share/nginx/html/index.html
#COPY index.html /usr/share/nginx/html/
COPY todo/ /usr/share/nginx/html/