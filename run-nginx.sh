export REDIRECT_HOST=http://localhost
export REDIRECT_PORT=3000

docker run --name test-nginx \
     --env REDIRECT_HOST=http://localhost \
     --env REDIRECT_PORT=3000 \
     -p 3333:80 \
     --network host \
     -v $PWD/conf/nginx.conf:/etc/nginx/nginx.conf \
     -v $PWD/conf/default.conf:/etc/nginx/conf.d/default.conf \
     -d nginx \