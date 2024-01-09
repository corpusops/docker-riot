FROM node:lts-alpine as builder
ARG VERSION=1.7.31
ENV VERSION=$VERSION
RUN set -ex;apk update \
    && apk add --no-cache \
        curl \
        git \
        libevent \
        libffi \
        libjpeg-turbo \
        libssl3 \
        nodejs \
        sqlite-libs \
        unzip \
        ; \
    npm install -g webpack http-server
RUN curl -L "https://github.com/vector-im//element-web/releases/download/v$VERSION/element-v$VERSION.tar.gz" -o /riot.tgz \
    && tar -xv -C / -f /riot.tgz \
    && mv -vf /element* /riot-web

################################################

FROM corpusops/nginx:alpine as web
WORKDIR /riot-web/
COPY --from=builder /riot-web ./
COPY nginx.conf /etc
COPY assets/config.json ./
COPY entrypoint.sh /
ARG VERSION=1.7.31
ENV VERSION=$VERSION
ENV BRAND="Riot"
ENV DOMAINS="localhost"
ENV RENDER_CFG="1"
ENV NGINX_USER="root"
ENV FEDERATE="true"
ENV ENABLE_LABS="true"
ENV DEFAULT_HS_URL="https://matrix.org"
ENV JITSI="jitsi.riot.im"
ENV DEFAULT_IS_URL="https://vector.im"
ENV ID_SERVERS="[\"matrix.org\", \"vector.im\"]"
ENV BRAND="Riot"
ENV INTEGRATIONS_UI_URL="https://scalar.vector.im/"
ENV INTEGRATIONS_REST_URL="https://scalar.vector.im/api"
ENV BUG_URL="https://riot.im/bugreports/submit"
EXPOSE 8080
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
