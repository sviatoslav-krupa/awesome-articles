FROM ruby:2.7.2

RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get update && apt-get install -y nodejs build-essential postgresql-client curl
RUN npm install -g yarn

ENV APP_HOME /awesome-articles

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN gem install bundler
RUN bundle install

ADD package.json $APP_HOME/
ADD yarn.lock $APP_HOME/
RUN yarn install

ADD . $APP_HOME
