FROM 817655935426.dkr.ecr.ap-southeast-1.amazonaws.com/alpine

RUN apk update && \
    apk upgrade && \
    apk add git rsync

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
