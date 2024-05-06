FROM nginx

EXPOSE 80
EXPOSE 443
# Copy ssl certificates


# Copy the nginx configuration file
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh

# CMD ["nginx","-g","daemon off;"]
CMD /wait-for-it.sh backend1:3001 -- /wait-for-it.sh backend2:3002 -- /wait-for-it.sh backend3:3003 -- nginx -g 'daemon off;'