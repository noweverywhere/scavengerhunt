FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /scavenger_hunt
WORKDIR /scavenger_hunt
ADD Gemfile /scavenger_hunt/Gemfile
ADD Gemfile.lock /scavenger_hunt/Gemfile.lock
RUN bundle install
ADD . /scavenger_hunt
