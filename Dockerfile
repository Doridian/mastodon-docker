FROM tootsuite/mastodon

USER root
RUN mkdir -p /var/cache/apt/archives/partial && apt update && apt -y install nginx && rm -rf /var/cache/apt
COPY nginx.conf /etc/nginx/sites-available/default

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

COPY mastodon-database.yml /mastodon/config/database.yml

USER mastodon
