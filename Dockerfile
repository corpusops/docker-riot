FROM node:8-alpine

ARG VERSION=0.13.3
ENV DEFAULT_HS_URL "https://matrix.org"
ENV DEFAULT_IS_URL "https://vector.im"
ENV BRAND "Riot"
ENV INTEGRATIONS_UI_URL "https://scalar.vector.im/"
ENV INTEGRATIONS_REST_URL "https://scalar.vector.im/api"
ENV BUG_URL "https://riot.im/bugreports/submit"

RUN set -ex;apk update \
    && apk add --no-cache \
        curl \
        git \
        libevent \
        libffi \
        libjpeg-turbo \
        libssl1.1 \
        nodejs \
        sqlite-libs \
        unzip \
        ; \
    npm install -g webpack http-server \
    && curl -L "https://github.com/vector-im/riot-web/releases/download/v$VERSION/riot-v$VERSION.tar.gz" -o /riot.tgz \
    && tar -xv -C / -f /riot.tgz \
    && rm riot.tgz \
    && mv riot-* riot-web \
    ; \
    apk del \
        git \
        unzip \
        ; \
    rm -rf /var/lib/apk/* /var/cache/apk/*

COPY assets/config.json /riot-web/
COPY entrypoint.sh /
WORKDIR /riot-web/
EXPOSE 8080

ENTRYPOINT [ \
    "/bin/sh", \
    "/entrypoint.sh" \
]
