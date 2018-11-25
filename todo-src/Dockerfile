FROM ruby:2.5-alpine

RUN apk update
RUN apk install alpine-sdk libpq nodejs

RUN mkdir /todo
WORKDIR /todo

COPY Gemfile /todo/Gemfile
COPY Gemfile.lock /todo/Gemfile.lock
COPY public/ /todo/public

RUN bundle install

ENV RAILS_ENV production
RUN puma