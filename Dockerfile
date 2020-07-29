FROM ubuntu:18.04
MAINTAINER Michael Mior <mmior@uwaterloo.ca>

LABEL org.label-schema.url="https://michael.mior.ca/projects/NoSE/" \
      org.label-schema.vcs-url="https://github.com/michaelmior/nose-cli" \
      org.label-schema.schema-version="1.0"

RUN apt-get update -qq && \
    apt-get install -qq \
      build-essential \
      coinor-libcbc3 \
      coinor-libcbc-dev \
      coinor-libcgl-dev \
      coinor-libclp-dev \
      coinor-libcoinutils-dev \
      coinor-libosi-dev \
      git \
      graphviz \
      libmagickwand-dev \
      libmysqlclient-dev \
      libpq-dev \
      ruby2.5 \
      ruby2.5-dev \
    && apt-get clean
RUN gem2.5 install bundler

ADD . /nose
WORKDIR /nose
RUN bundle install
