FROM ruby:2.3

RUN mkdir /stats-ms
WORKDIR /stats-ms

ADD Gemfile /stats-ms/Gemfile
ADD Gemfile.lock /stats-ms/Gemfile.lock

RUN bundle install
ADD . /stats-ms

EXPOSE 3305
