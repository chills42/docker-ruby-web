FROM ruby:2.4.1
RUN apt-get update && apt-get install build-essential git -y
RUN apt-get update && apt-get install mysql-client libmysqlclient-dev python nodejs -y
# Install nodejs and yarn
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y nodejs yarn
RUN gem install bundler mysql2 omniauth puma rails
