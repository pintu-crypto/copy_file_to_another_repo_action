FROM public.ecr.aws/docker/library/alpine:latest

RUN apk add --no-cache --upgrade git rsync

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
