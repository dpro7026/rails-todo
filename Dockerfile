FROM ruby:2.5-alpine

RUN apk update
RUN apk add alpine-sdk libpq nodejs
# RUN apk add sqlite
RUN apk add sqlite-dev
RUN apk add tzdata libxml2-dev libxslt-dev

RUN mkdir /todo
COPY todo-src/ /todo

WORKDIR /todo
RUN bundle install

ENV RAILS_ENV production

RUN rails db:create db:migrate assets:precompile

EXPOSE 3000
CMD rails server -b 0.0.0.0 -p 3000