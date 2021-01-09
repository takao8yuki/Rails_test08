FROM ruby:2.5
RUN apt-get -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false update \
    && apt-get install -y build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

WORKDIR /Rails_test08
COPY Gemfile Gemfile.lock /Rails_test08/
RUN bundle install