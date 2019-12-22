FROM alpine:3.11
RUN apk --no-cache add socat
COPY docker-entrypoint.sh /
USER 1001
ENTRYPOINT ["/docker-entrypoint.sh"]
