FROM ruby:2.6.2
RUN apt-get update -qq && apt-get install --no-install-recommends -y build-essential libpq-dev postgresql-client
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install -y nodejs
RUN mkdir /elsrails
WORKDIR /elsrails
COPY Gemfile /elsrails/Gemfile
COPY Gemfile.lock /elsrails/Gemfile.lock
RUN bundle install
COPY . /elsrails