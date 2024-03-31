FROM nginx

EXPOSE 80
EXPOSE 443
# Copy ssl certificates


# Copy the nginx configuration file
COPY ./default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx","-g","daemon off;"]