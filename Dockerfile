FROM ruby:2.6.0
RUN apt-get update && apt-get install build-essential cmake git -y
RUN apt-get update && apt-get install default-libmysqlclient-dev mariadb-client python gnuplot -y
# Install nodejs and yarn
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y nodejs yarn && rm -rf /var/lib/apt/lists/*
RUN npm install -g svg-sankey
RUN gem install \
	bundler \
	commonmarker \
	nokogiri \
	mysql2 \
	omniauth \
	puma \
	rails \
