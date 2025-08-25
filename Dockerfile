FROM ruby:3.2

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /app/

COPY ./my_ruby_app/Gemfile* /app/

RUN bundle install

COPY ./my_ruby_app/ /app/