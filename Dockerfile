FROM ubuntu:14.04

ENV HOME /root



WORKDIR /root

ADD target/release/bazaar_app /root/

EXPOSE 8080

CMD ["/root/bazaar_app"]