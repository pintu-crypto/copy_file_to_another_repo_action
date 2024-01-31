FROM public.ecr.aws/docker/library/alpine:latest

RUN apk update && \
    apk upgrade && \
    apk add git rsync

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
