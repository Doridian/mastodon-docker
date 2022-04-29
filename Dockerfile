FROM tootsuite/mastodon

USER root
RUN mkdir -p /var/cache/apt/archives/partial && apt update && apt -y install nginx && rm -rf /var/cache/apt
COPY nginx.conf /etc/nginx/sites-available/default

USER mastodon
