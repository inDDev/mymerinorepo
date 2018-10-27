FROM ruby:2.5.1

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
   	libgmp-dev \
   	postgresql-client \
   	nodejs \
  && apt-get -q clean \
  && rm -rf /var/lib/apt/lists

RUN gem install nokogiri -v "1.8.5"

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . . 

CMD /bin/sh -c "rm -f /usr/src/app/tmp/pids/server.pid && rails server -b 0.0.0.0"