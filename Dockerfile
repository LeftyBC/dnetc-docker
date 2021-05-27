FROM alpine:latest

RUN apk add --no-cache bash curl
RUN mkdir -p /opt
RUN curl -o /tmp/dnetc-current.tar.gz http://http.distributed.net/pub/dcti/current-client/dnetc-linux-amd64-uclibc.tar.gz
RUN cd /tmp && tar -xzvf dnetc-current.tar.gz  && mv dnetc*-linux-amd64-uclibc /opt/dnetc

ADD dnetc.ini /opt/dnetc/dnetc.ini

CMD ["/opt/dnetc/dnetc"]

