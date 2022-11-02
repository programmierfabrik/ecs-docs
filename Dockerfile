from klakegg/hugo:0.105.0-ext

COPY . /docs
WORKDIR /docs
RUN hugo -D

from nginx:1.23-alpine
COPY --from=0 /docs/public /usr/share/nginx/html/help
