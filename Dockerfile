FROM ruby:2.5-slim

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev libxml2-dev libxslt1-dev nodejs git

RUN mkdir /application
WORKDIR /application

COPY Gemfile /application/
COPY Gemfile.lock /application/

RUN gem install bundler
RUN bundle install

COPY . /application

ENV PORT 3000
