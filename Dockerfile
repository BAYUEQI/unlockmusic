FROM --platform=$TARGETPLATFORM nginx:stable-alpine

LABEL org.opencontainers.image.title="Unlock Music"
LABEL org.opencontainers.image.description="Unlock encrypted music file in browser"
LABEL org.opencontainers.image.authors="MengYX"
LABEL org.opencontainers.image.source="https://git.unlock-music.dev/um/web"
LABEL org.opencontainers.image.licenses="MIT"
LABEL maintainer="MengYX"

COPY ./dist /usr/share/nginx/html
