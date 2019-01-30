FROM alpine:3.8
MAINTAINER Kevin Choi <kevin.choi@paust.io>

ENV TMHOME /tendermint

RUN apk update && \
    apk upgrade && \
    apk --no-cache add curl jq bash libstdc++ libbz2 snappy lz4-libs zstd-libs libgcc

VOLUME [ $TMHOME ]
WORKDIR $TMHOME
EXPOSE 26656 26657
ENTRYPOINT ["/usr/bin/wrapper.sh"]
CMD ["node"]
STOPSIGNAL SIGTERM

COPY wrapper.sh /usr/bin/wrapper.sh
COPY tendermint /usr/bin/tendermint
COPY paust-db /usr/bin/paust-db
