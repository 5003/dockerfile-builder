FROM alpine:edge
RUN apk add --no-cache tzdata && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del --no-cache tzdata
RUN apk add --no-cache --virtual .builder \
                                 ca-certificates \
                                 curl \
                                 wget