FROM node:12.20.2-buster-slim

ENV VERSION 1.1156-vsc1.33.1
ENV DOMAIN localhost

COPY docker-entrypoint.sh /

RUN apt update \
    && apt install net-tools wget -y \
    && apt-get clean \
    && wget https://github.com/cdr/code-server/releases/download/${VERSION}/code-server${VERSION}-linux-x64.tar.gz \
    && tar -xzf code-server${VERSION}-linux-x64.tar.gz \
    && mv code-server${VERSION}-linux-x64/code-server /usr/local/bin/code-server \
    && chmod +x /usr/local/bin/code-server /docker-entrypoint.sh \
    && rm -rf code-server${VERSION}-linux-x64.tar.gz

CMD ["/docker-entrypoint.sh"]
