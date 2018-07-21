FROM alpine

RUN apk --no-cache add netcat-openbsd

ADD run.sh /usr/bin
RUN chmod +x /usr/bin/run.sh

ENTRYPOINT [ "/usr/bin/run.sh" ]
