FROM tootsuite/mastodon

RUN apt update && apt -y install nginx && rm -rf /var/cache/apt
COPY nginx.conf /etc/nginx/conf.d/default.conf
