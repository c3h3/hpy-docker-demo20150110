FROM debian:jessie

MAINTAINER Chia-Chi Chang <c3h3.tw@gmail.com>

RUN apt-get update && apt-get install -y vim python

RUN mkdir demo_web

WORKDIR /demo_web

RUN echo "Hello, Docker with Python!" > index.html

ENV WEB_PORT 8888

CMD python -m SimpleHTTPServer $WEB_PORT