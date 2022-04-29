FROM tootsuite/mastodon

RUN apk --no-cache add nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf
