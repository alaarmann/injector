FROM openresty/openresty

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

COPY default.conf /usr/local/openresty/nginx/sites/default.conf
