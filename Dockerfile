from klakegg/hugo:0.100.0-ext

COPY . /docs
RUN cd /docs; ls -lh; hugo -D; ls -lh public

from nginx:1.23-alpine
COPY --from=0 /docs/public /usr/share/nginx/html/help
